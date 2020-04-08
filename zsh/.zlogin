# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	printf "Starting Sway\n"
	#exec sway
fi
