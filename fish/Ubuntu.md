# Fish shell on Ubuntu

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

- Change /etc/passwd shell to /usr/bin/fish

- Add to ~/.config/fish/config.fish

set theme_color_scheme gruvbox
set LC_CTYPE en_US.UTF-8

# If is a server with Go
set PATH /usr/local/go/bin/go $PATH

alias go="/usr/local/go/bin/go"

- Replace ~/.config/fish/fish_variables content with

# This file contains fish universal variable definitions.
# VERSION: 3.0
SETUVAR __fish_initialized:3100
SETUVAR fish_color_autosuggestion:747369
SETUVAR fish_color_cancel:\x2dr
SETUVAR fish_color_command:99cc99
SETUVAR fish_color_comment:ffcc66
SETUVAR fish_color_cwd:green
SETUVAR fish_color_cwd_root:red
SETUVAR fish_color_end:cc99cc
SETUVAR fish_color_error:f2777a
SETUVAR fish_color_escape:66cccc
SETUVAR fish_color_history_current:\x2d\x2dbold
SETUVAR fish_color_host:normal
SETUVAR fish_color_host_remote:yellow
SETUVAR fish_color_match:6699cc
SETUVAR fish_color_normal:normal
SETUVAR fish_color_operator:6699cc
SETUVAR fish_color_param:d3d0c8
SETUVAR fish_color_quote:ffcc66
SETUVAR fish_color_redirection:d3d0c8
SETUVAR fish_color_search_match:bryellow\x1e\x2d\x2dbackground\x3dbrblack
SETUVAR fish_color_selection:white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
SETUVAR fish_color_status:red
SETUVAR fish_color_user:brgreen
SETUVAR fish_color_valid_path:\x2d\x2dunderline
SETUVAR fish_greeting:Welcome\x20to\x20fish\x2c\x20the\x20friendly\x20interactive\x20shell\x0aType\x20\x60help\x60\x20for\x20instructions\x20on\x20how\x20to\x20use\x20fish
SETUVAR fish_key_bindings:fish_default_key_bindings
SETUVAR fish_pager_color_completion:normal
SETUVAR fish_pager_color_description:B3A06D\x1eyellow
SETUVAR fish_pager_color_prefix:white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
SETUVAR fish_pager_color_progress:brwhite\x1e\x2d\x2dbackground\x3dcyan






- Install Oh My Fish with `curl -L https://get.oh-my.fish | fish`

- Set bob the fish theme with `omf install bobthefish`