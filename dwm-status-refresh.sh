print_volume() {
	volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
	if test "$volume" -gt 0
	then
		echo -e "\uE05D${volume}"
	else
		echo -e "Mute"
	fi
}
print_date(){
	date '+%Y.%m.%d  %H:%M'
}
show_record(){
	test -f /tmp/r2d2 || return
	rp=$(cat /tmp/r2d2 | awk '{print $2}')
	size=$(du -h $rp | awk '{print $1}')
	echo " $size $(basename $rp)"
}
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")
export IDENTIFIER="unicode"
. "$DIR/dwmbar-functions/dwm_alsa.sh"
xsetroot -name "    $(dwm_alsa)  $(show_record) $(print_date) "
#old_received_bytes=$received_bytes
#old_transmitted_bytes=$transmitted_bytes
old_time=$now

exit 0
