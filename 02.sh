#!/bin/bash
C_FILE="/etc/crontab"
FILE="/root/mail/prev_tab"
DIF="$(diff $C_FILE $FILE)"

if [ ! -f "$FILE" ]; then
	: > "$FILE"
fi

if [ $(( $(date +%s) - $(date +%s -r /etc/crontab) )) -le 86400 ]; then
	echo "$DIF" | sudo mail -s "crontab modification" root@debian.lan
	cp "$C_FILE" "$FILE"
fi
