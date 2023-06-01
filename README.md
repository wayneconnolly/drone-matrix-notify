# drone-matrix-notify
The official plugin is broken so I made this. Its based off https://github.com/fabianonline/matrix.sh

# PROPERTIES

## homeserver
string
required
The Matrix homeserver URL.

Default: https://matrix.org

## accesstoken
string
optional
Matrix access token

## roomid
string
required
Room ID to send messages (not alias, but ID, and don't skip the !).
