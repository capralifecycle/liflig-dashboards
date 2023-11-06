#!/bin/bash

set -eo pipefail

CONFIG="$(curl https://raw.githubusercontent.com/capralifecycle/liflig-dashboards/master/configs/$(hostname).json)"

URL=$(echo "$CONFIG" | sops --input-type json --output-type json -d /dev/stdin | jq -r '.website')


notify-send --expire-time=0 --urgency=critical "$(hostname -I) $(hostname)"

unclutter &

chromium-browser "$URL"  --window-size=1922,1080 --window-position=0,0 --start-fullscreen  --noerrdialogs --disable-translate  --no-first-run  --fast  --fast-start  --disable-infobars  --disable-features=TranslateUI  --disk-cache-dir=/dev/null  --overscroll-history-navigation=0  --disable-pinch --hide-crash-restore-bubble

