# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	export GTK_THEME=Arc:dark
	exec sway
fi
