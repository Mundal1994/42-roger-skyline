#!/bin/bash
C_FILE="/etc/crontab"
FILE="/root/mail/prev_tab"
DIF="$(diff $C_FILE $FILE)"

if [ ! -f "$FILE" ]; then
	: > "$FILE"
fi

if ! cmp -s "$C_FILE" "$FILE"; then
	echo "$DIF" | sudo mail -s "crontab modification" root@debian.lan
	cp "$C_FILE" "$FILE"
fi
