printf "Preparing to generate SSH keys..."

printf "What is your email?"
read EMAIL

ssh-keygen -t ed25519 -C $EMAIL

printf "You may now want to add your ssh key to github : \n"
cat .ssh/id_ed25519.pub
