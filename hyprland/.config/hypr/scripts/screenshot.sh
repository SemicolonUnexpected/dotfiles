#!/bin/bash

LOCK_FILE="/tmp/screenshot_tool.lock"

function cleanup {
    rm -f "$LOCK_FILE"
}
trap cleanup EXIT

if [ -e "$LOCK_FILE" ]; then
    notify-send "Screenshot Tool" "Another instance is already running."
    exit 1
fi

touch "$LOCK_FILE"

SCREENSHOTS_DIR="$HOME/screenshots"
mkdir -p "$SCREENSHOTS_DIR"

FILENAME="$(date +%Y-%m-%d_%H-%M-%S).png"
FILE_PATH="$SCREENSHOTS_DIR/$FILENAME"

MODE="${1:-region}"

case "$MODE" in
    region)
        REGION=$(slurp)
        if [ -z "$REGION" ]; then
            notify-send -a "Screenshot" "Cancelled" "No area selected."
            exit 1
        fi
        grim -g "$REGION" - | tee "$FILE_PATH" | wl-copy
        ;;
    screen)
        grim - | tee "$FILE_PATH" | wl-copy
        ;;
    window)
        WINDOW_AT=$(hyprctl activewindow | grep 'at:' | awk '{print $2}')
        WINDOW_SIZE=$(hyprctl activewindow | grep 'size:' | awk '{print $2}' | sed 's/,/x/')
        WINDOW_GEOMETRY="${WINDOW_AT} ${WINDOW_SIZE}"

        if [ -z "$WINDOW_GEOMETRY" ]; then
            notify-send -a "Screenshot" "Cancelled" "No active window found."
            exit 1
        fi
        grim -g "$WINDOW_GEOMETRY" - | tee "$FILE_PATH" | wl-copy
        ;;
    *)
        notify-send -a "Screenshot" "Error" "Invalid mode. Use 'region', 'screen', or 'window'."
        exit 1
        ;;
esac

# Check if the screenshot file was created successfully.
if [ -s "$FILE_PATH" ]; then
    # Copy the saved file to the clipboard.
    wl-copy < "$FILE_PATH"

    notify-send \
        -a "Screenshot" \
        "Screenshot Captured!" \
        "Saved to a file and copied to the clipboard."
else
    notify-send -a "Screenshot" "Screenshot Failed" "Failed to capture screenshot."
fi

