#!/usr/bin/bash

# Read value
read SEARCH_VALUE
[ -z "$SEARCH_VALUE" ] && return;

URL=""
if [[ $SEARCH_VALUE =~ https?://.* ]]; then
    URL="${SEARCH_VALUE}"
else
    # Should probably be replaced with a better urlencode
    SEARCH_VALUE=${SEARCH_VALUE// /%20}

    URL="https://www.google.se/search?q=${SEARCH_VALUE}"
fi

# Trigger firefox search
#echo firefox --new-tab "${URL}" | xargs -r swaymsg exec -- && swaymsg "workspace 2:web"
echo brave "${URL}" | xargs -r swaymsg exec -- && swaymsg "workspace 2:web"

# todo set specific class on that firefox instance
# focus
