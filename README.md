# Enx_UIKit_iOS

**Enx_UIKit_iOS** is an iOS Video UI Kit, which helps you develop with Video UI quickly without having to read through all API Documentation and handling all complexities that comes along the development process. It provides easy way to get started with a Video UI.

## Documentation

For API documentation, see the library's official documentation in Xcode or on the Web.

[APIs Documentation](https://developer.enablex.io/docs/guides/ui-kit-guide/ios-ui-kit-guide/index/)

## Adding Enx_UIKit_iOS as a Dependency

To use the `Enx_UIKit_iOS` library in a SwiftPM project, 
add the following line to the dependencies in your `Package.swift` file:

```swift
.package(url: "https://github.com/EnableX/Enx_UIKit_iOS.git", from: "1.0.0"),
```

## How to use

Go to your class, where you wanted to implement the Video/Audio/Chat feature, import the libraray
```swift
    import EnxRTCiOS
```
Create the objects for required SDK classes

```swift
    var enxRoom : EnxRoom!
```
This is the object of EnxRoom class, all room based functions/mothods need to call through this object. Once you are connected to the room , you will receive **didConnect** callBack with the reference of EnxRoom to be assign to the **enxRoom** object.
```swift
    var enxRTC : EnxRtc!
```
This is the object of EnxRTC class. EnxRTC will give you single method to connect with room. It will also do all internal formalities required for connection like creating EnxRoom, EnxStream etc.

```swift
    var enxStream : EnxStream!
```
This is the object of EnxStream class, all stream based functions/methods must be called through this object.

```swift
    var enxPlayerView : EnxPlayerView!
```
This is the object of EnxPlayerView class. This is used to play local or remote video streaming.

**How to join the EnableX Room?**   
You need to call join method as code given below - 

```swift
    enxRTC = EnxRtc()
    guard let steam = enxRTC.joinRoom(token, delegate: self, publishStreamInfo: localStreamInfo, roomInfo: roomInfo , advanceOptions: nil) else{return}
                self.localStream = steam
                self.localStream.delegate = self as EnxStreamDelegate
```
*Function Parameters*

- `token` is must be a valid EnableX session token as string.
- `delegate` is instance of class where you receive events notifications.
- `publishStreamInfo` contrains Local EnxStream information as [[String : Any]](https://developer.enablex.io/docs/references/sdks/video-sdk/ios-sdk/stream-configuration/content/local-stream/).
- `roomInfo` contains EnxRoom Basice information as [[String : Any]](https://developer.enablex.io/docs/references/sdks/video-sdk/ios-sdk/room-connection/index/).
- `advanceOptions` this is an optional parameter, provide as [[Any]](https://developer.enablex.io/docs/references/sdks/video-sdk/ios-sdk/room-connection/index/).

*Callbacks* 

- On getting connected with EnableX Room, following callbacks are received:

        func room(_ room: EnxRoom?, didConnect roomMetadata: [String : Any]?)
        func room(_ room: EnxRoom?, didAddedStream stream: EnxStream?)
        func room(_ room: EnxRoom?, didActiveTalkerList Data: [EnxStream]?) or func room(_ room: EnxRoom?, didActiveTalkerView view: UIView?)

- On failing to connect with Enablex Room, following callback are received:

        func room(_ room: EnxRoom?, didError reason: [Any]?)

- On being disconnected from EnableX Room, following callbacks are received:

        func didRoomDisconnect(_ response: [Any]?)

- On joining or exiting EnabeX Room by others users, following callbacks are received:

        func room(_ room: EnxRoom?, userDidJoined Data: [Any]?)
    
**Note:** Developers must implement the above mentioned Callbacks as they are mandatory to handle. All other Callbacks, given in Developer Documentation; are optional and may be implemented if needed.
