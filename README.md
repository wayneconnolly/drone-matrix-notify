# drone-matrix-notify
The official plugin is broken so I made this. Its based off https://github.com/fabianonline/matrix.sh

# PROPERTIES

## homeserver
- The Matrix homeserver URL.
- `string` required


Default: https://matrix.org

## accesstoken
- Matrix access token
- `string` required


## roomid
- Room ID to send messages (not alias, but ID, and skip the !).
- `string` required

## template
- Stock template message
- required
- 
``` 
  - name: Notify Element
    image: dubc/drone-matrix-notify
    settings:
      homeserver: https://matrix.domain.com
      roomid: eEReyMfMyRpGObXr:matrix.domain.com
      accesstoken:
        from_secret: matrix_drone_token
      template: |
        Build #{{build.number}} {{ build.status }}   
        Message: {{build.message}}        
      when:
        status: [ success, failure ]
```
