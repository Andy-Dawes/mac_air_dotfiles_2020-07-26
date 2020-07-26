
tmux has-session -t all
if [ $? != 0 ]

then

source-file ~/.tmux.conf

tmux new-session -s all -n terminal -d
tmux split-window -h -p 50 -t all
tmux send-keys -t all:1.2 'howdoI if statement javascript'  C-m

tmux new-window -n code -t all
tmux send-keys -t all:2 'vim' C-m

tmux new-window -n projects -t all
tmux send-keys -t all:3.1 'taskell .taskell/projects/gst-proposal.md' C-m
tmux split-window -v -p 50 -t all
tmux send-keys -t all:3.2 'taskell .taskell/projects/gst-genesis.md' C-m
# tmux split-window -h -p 30 -t all
# tmux send-keys -t all:3.3 'watson projects' C-m

tmux new-window -n time -t all
tmux send-keys -t all:4.1 'task' C-m
tmux split-window -h -p 20 -t all
tmux send-keys -t all:4.2 'cd ~/Software/calories/bin' C-m
tmux send-keys -t all:4.2 'clear' C-m
tmux send-keys -t all:4.2 './calories' C-m
# tmux split-window -v -p 30 -t all
# tmux send-keys -t all:4.3 'watson projects'  C-m

tmux new-window -n find -t all
tmux send-keys -t all:5 'ranger' C-m

tmux new-window -n read -t all
tmux send-keys -t all:6.1 'newsboat' C-m
# tmux split-window -h -p 50 -t all
# tmux send-keys -t all:6.2 'tuir' C-m

tmux new-window -n scrooge -t all
tmux send-keys -t all:7 'hub' C-m

tmux new-window -n check -t all
tmux send-keys -t all:8 'htop' C-m

# tmux new-window -n jupyter -t all
# tmux send-keys -t all:9 '' C-m

# tmux new-window -n barebones -t all
# tmux send-keys -t all:10 'vimu -N -u ~/.lvthw_vimrc' C-m

tmux select-window -t all:2

fi

tmux attach -t all
