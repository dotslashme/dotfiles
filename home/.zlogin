# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	export GTK_THEME=Nordic
	exec sway --my-next-gpu-wont-be-nvidia
fi
