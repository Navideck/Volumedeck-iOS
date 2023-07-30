# Volumedeck SDK - iOS

## Overview

Volumedeck SDK provides speed-based audio volume control for iOS apps, enhancing the audio experience for users in vehicles and public transport.

## Key Features

- Speed-Sensitive Volume Adjustment: Automatically adjusts audio volume based on the vehicle's speed for consistent audio levels.
- Enhanced Safety and Focus: Eliminates the need for manual volume adjustments, enhancing driver safety and passenger convenience.
- Efficient and Reliable: Real-time speed-based volume control for smooth and uninterrupted listening experiences.
- Easy Integration: User-friendly API and comprehensive documentation for straightforward implementation.
- Versatile Applications: Enhances navigation, music streaming, and audio content delivery apps for various vehicles and public transport.
- Seamless Integration with Hardware Volume Keys: Allows unified volume control alongside Gesturedeck adjustments.

## Getting Started

To use Volumedeck SDK, follow these steps:

1. Import the Volumedeck SDK module into your Swift class:

```swift
import Volumedeck // Or import VolumedeckiOS if you imported the xcframework directly
```

2. Initialize Volumedeck SDK in your AppDelegate or SceneDelegate:

### AppDelegate

It's recommended to instantiate the SDK in the `applicationDidBecomeActive` method or later, as the window might not be instantiated in the `didFinishLaunchingWithOptions` lifecycle event.

```swift
import Volumedeck

class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var volumedeck: Volumedeck?

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Instantiate Volumedeck
    volumedeck = Volumedeck()

    // Set the status
    volumedeck?.isOn = true
  }
}
```

### SceneDelegate

For applications that support scenes, use the `sceneDidBecomeActive` method or later.

```swift
import Volumedeck

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?
  var volumedeck: Volumedeck?

  func sceneDidBecomeActive(_ scene: UIScene) {
    // Instantiate Volumedeck
    volumedeck = Volumedeck()

    // Set the status
    volumedeck?.isOn = true
  }
}
```

## Add NSLocationWhenInUseUsageDescription in your plist

To use Volumedeck, you need to add the `NSLocationWhenInUseUsageDescription` key in your app's `Info.plist` file. Provide an appropriate description, such as "Volumedeck needs to read your current speed."

## Run in background

If you want Volumedeck to run when your app is in the background, follow these steps:

1. Pass the `runInBackground` property when instantiating Volumedeck:

```swift
Volumedeck(runInBackground: true)
```

2. In the project settings, navigate to "Signing & Capabilities," add "Background Modes," and check "Location Updates."

## Contact

For questions or support, please contact us at team@navideck.com. Thank you for choosing Volumedeck SDK!