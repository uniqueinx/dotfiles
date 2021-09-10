email="e.agx2020@gmail.com"
cd ~/.ssh
ssh-keygen -t ed25519 -C $email -f github_key
xclip -selection clipboard < github_key.pub
cd - 
echo "paste the copied pub-key into github account"
