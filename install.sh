# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.git \
	nixpkgs.stow \
	nixpkgs.yarn \
	nixpkgs.bat \
	nixpkgs.starship \
	nixpkgs.gh

# install oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -R -f ~/.zshrc

# stow
stow git
stow zsh
stow starship

exec zsh