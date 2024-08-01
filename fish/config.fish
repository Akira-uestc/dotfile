set -g __fish_terminal_just_started 1

#oh-my-posh init fish --config ~/.config/fish/myTheme.json | source

#oh-my-posh init fish --config ~/.poshthemes/clean-detailed.omp.json | source

starship init fish | source

export QT_SCREEN_SCALE_FACTORS=1
export QT_FONT_DPI=120

export LFS=/mnt/lfs

alias n=neofetch
