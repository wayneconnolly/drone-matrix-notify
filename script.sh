#!/bin/bash
COMMIT_MSG=$(echo $DRONE_COMMIT_MESSAGE | sed -e 's|\\n"||g' | tr -d '"')
# ALL=$(printenv)

SUCCESS=$(cat <<-END
    🚀 Build $DRONE_REPO #$DRONE_BUILD_NUMBER success.
    📝 $COMMIT_MSG
END

)

FAIL=$(cat <<-END
    🚫 Build $DRONE_REPO #$DRONE_BUILD_NUMBER fail.
    📝 $COMMIT_MSG
    $DRONE_BUILD_LINK
END

) 

if [ "$DRONE_BUILD_STATUS" == "success" ];then
    MSG=$SUCCESS
else
    MSG=$FAIL
fi

ROOMID="!"
ROOMID+="${PLUGIN_ROOMID}"
bash /bin/matrix.sh  --homeserver="${PLUGIN_HOMESERVER}" --token="${PLUGIN_ACCESSTOKEN}" --room="${ROOMID}" "$MSG"
