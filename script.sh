#/bin/bash

if [[ -n $PLUGIN_SERVER ]]; then
    SERVER="$PLUGIN_SERVER"
fi
if [[ -n $PLUGIN_ROOMID ]]; then
    ROOMID="!$PLUGIN_ROOMID"
fi
if [[ -n $PLUGIN_TOKEN ]]; then
    TOKEN="$PLUGIN_TOKEN"
fi
if [[ -n $PLUGIN_TEMPLATE ]]; then
    TEMPLATE="$PLUGIN_TEMPLATE"
fi

bash /bin/matrix.sh  --homeserver="${SERVER}" --token="${TOKEN}" --room="${ROOMID}" "$TEMPLATE"
