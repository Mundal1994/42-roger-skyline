#!/bin/bash
C_FILE="/etc/crontab"
FILE="/root/mail/prev_tab"
DIF="$(diff $C_FILE $FILE)"
CUR_DATE="$(date | awk '{print $2,$3,$6}')"
MOD_DATE="$(date -d "@$(stat -c '%Y' /etc/crontab)" | awk '{print $2,$3,$6}')"

if [ ! -f "$FILE" ]; then
	: > "$FILE"
fi

if [ "$CUR_DATE" == "$MOD_DATE" ]; then
	echo "$DIF" | sudo mail -s "crontab modification" root@debian.lan
	cp "$C_FILE" "$FILE"
fi
