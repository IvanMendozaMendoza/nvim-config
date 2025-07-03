if status is-interactive
    # Commands to run in interactive sessions can go here
end

if not contains ~/.local/bin $PATH
    set -gx PATH ~/.local/bin $PATH
end

# --- Rust --- (from bash)
fish_add_path ~/.cargo/bin

# -- Golang --
set -gx PATH /usr/local/go/bin $PATH
set -gx GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

alias c="clear"

# --- starship ----
starship init fish | source
