if status is-interactive
	# General
	alias ls="eza -TL 1 --icons --sort extension --group-directories-first --git"
	alias lsa="ls a" 
	alias lsd="ls -D"
	alias freload="source ~/.config/fish/config.fish"

	# Docker
	alias dps="sudo docker ps"
	alias drm="sudo docker container rm"
	alias dimg="sudo docker image"
	alias dimgs="sudo docker images"
	alias dimgrm="sudo docker image rm"
	alias dexec="sudo docker exec -it"
	alias dcrel="sudo docker compose down && sudo docker compose up --build -d"
	alias dcdown="sudo docker compose down"
	alias dcup="sudo docker compose up"
	alias dlogs="sudo docker logs"

	# Git
	alias gis="git switch"
	alias gism="git switch main"
	alias gp="git push"
  alias ga="git add"
	alias gal="git add ."
	alias gc="git commit"
  alias gcb="git checkout -b"
	alias gco="git checkout"
	alias gbr="git branch"
	alias gbrm="git branch -m"
	alias gbl="git branch"
	alias gits="git status"

	# ssh
	alias rssh="eval (ssh-agent -c) && ssh-add ~/.ssh/id_ed25519"

  # tmux
  alias tnew="tmux new -s (basename (pwd))"

	starship init fish | source	
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# asdf
source ~/.asdf/asdf.fish

# zoxide
fish_add_path -g ~/.local/bin
zoxide init fish | source

# Redirect to '~' if default dir is '/mnt/c/WINDOWS/System32'
if test (pwd) = "/mnt/c/WINDOWS/System32"; z; end
