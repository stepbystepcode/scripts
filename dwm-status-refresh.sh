print_volume() {
	volume="$(pulseaudio-ctl | sed -n '15p' | awk  '{print substr($4,14)}')"
		if [[ $volume -eq 0 || $(pulseaudio-ctl | sed -n '16p') == *yes* ]]; then
            printf "🔇"
        elif [ "$volume" -gt 0 ] && [ "$volume" -le 33 ]; then
            printf "🔈$volume%s%%"
        elif [ "$volume" -gt 33 ] && [ "$volume" -le 66 ]; then
            printf "🔉$volume%s%%"
        else
          printf "🔊 $volume%s%%"
        fi
}
print_date(){
	date '+%Y.%m.%d|%H:%M'
}
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")
export IDENTIFIER="unicode"
. "$DIR/dwmbar-functions/dwm_battery.sh"
. "$DIR/dwmbar-functions/dwm_backlight.sh"
#. "$DIR/dwmbar-functions/dwm_weather.sh"
xsetroot -name "$(print_volume)|$(dwm_battery)|$(dwm_backlight)|$(print_date)|"
old_time=$now

exit 0
