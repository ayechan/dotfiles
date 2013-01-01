set-option -g prefix C-t
set-window-option -g mode-keys vi
set-option -g base-index 1

# q Window を閉じる
bind-key q kill-window 
bind-key C-q kill-window 

# x Window を入れ替える
bind-key x swap-pane -U
bind-key C-x swap-pane -U

# a Window を追加
bind-key a new-window
bind-key C-a new-window

# p 前の Window
bind-key p previous-window 
bind-key C-p previous-window

# n 次の Window
bind-key n next-window
bind-key C-n next-window

bind-key t send-prefix
bind-key C-t select-pane -t :.+

bind-key v split-window -h
bind-key C-v split-window -h
bind-key s split-window -v
bind-key C-s split-window -v
bind-key y copy-mode
bind-key C-y copy-mode

# c で閉じる
bind-key c kill-pane
bind-key C-c kill-pane

bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R
bind-key C-h select-pane -L
bind-key C-j select-pane -D
bind-key C-k select-pane -U
bind-key C-l select-pane -R

bind-key r source ~/.tmux.conf
bind-key C-r source ~/.tmux.conf
bind -r < resize-pane -L 1
bind -r > resize-pane -R 1
bind -r - resize-pane -D 1
bind -r + resize-pane -U 1

bind : command-prompt

bind C-y copy-mode
bind -t vi-copy v begin-selection
bind -t vi-copy y copy-selection
bind -t vi-copy Escape cancel

