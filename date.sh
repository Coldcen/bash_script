#!/bin/bash
while true; do
	batt=$(LC_ALL=C acpi -b)
	case $batt in
	*Discharging*)
		batt="${batt#* * * }"
		batt="${batt%%, *} "
		;;
	*)
		batt=""
		;;
	esac
	xsetroot -name "$batt$( date +"%F %R" )"
	sleep 60
done &
