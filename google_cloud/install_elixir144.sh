sudo apt-get update
sudo apt-get install tmux -y
sudo apt-get install build-essential -y
sudo apt-get install libncurses-dev -y
sudo apt-get install libssl-dev -y
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source ~/.bashrc
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf install elixir 1.4.4
asdf global elixir 1.4.4
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install erlang 19.3
asdf global elixir 19.3
