# Volumedeck SDK - iOS

## Overview

Volumedeck SDK provides speed-based audio volume control for iOS apps, enhancing the audio experience for users in vehicles and public transport.

## Key Features

- Speed-Sensitive Volume Adjustment: Automatically adjusts audio volume based on the vehicle's speed for consistent audio levels.
- Enhanced Safety and Focus: Eliminates the need for manual volume adjustments, enhancing driver safety and passenger convenience.
- Efficient and Reliable: Real-time speed-based volume control for smooth and uninterrupted listening experiences.
- Easy Integration: User-friendly API and comprehensive documentation for straightforward implementation.
- Versatile Applications: Enhances navigation, music streaming, and audio content delivery apps for various vehicles and public transport.
- Seamless Integration with Hardware Volume Keys: Allows unified volume control alongside Volumedeck adjustments.
- Does not require internet connectivity

## Getting Started with Volumedeck

To integrate Volumedeck into your iOS app, you must add the Volumedeck framework to your project. You can easily do that using Swift Package Manager (SPM). Through Xcode, go to `Package Dependencies`, click `+` and simply use the URL of this repo. SPM will fetch and add the framework automatically. 

After adding the framework, follow the steps below to integrate it with your app.

### Step 1: Import VolumedeckiOS

Import the VolumedeckiOS module into your Swift class:

```swift
import VolumedeckiOS
```

### Step 2: Choose Integration Option

Initialize the SDK in your AppDelegate or SceneDelegate:

#### AppDelegate

It's recommended to initialize the SDK in the `applicationDidBecomeActive` method or later, as the window might not be initialized in the `didFinishLaunchingWithOptions` lifecycle event. Make sure that you avoid initializing Volumedeck multiple times.

```swift
import VolumedeckiOS

class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var volumedeck: Volumedeck?

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Initialize Volumedeck
    volumedeck = volumedeck ?? Volumedeck()

    // Set the status
    volumedeck?.isOn = true
  }
}
```

#### SceneDelegate

For applications that support scenes, use the `sceneDidBecomeActive` method or later. Make sure that you avoid initializing Volumedeck multiple times.

```swift
import VolumedeckiOS

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?
  var volumedeck: Volumedeck?

  func sceneDidBecomeActive(_ scene: UIScene) {
    // Initialize Volumedeck
    volumedeck = volumedeck ?? Volumedeck()

    // Set the status
    volumedeck?.isOn = true
  }
}
```

### Step 3: Configure your plist
 Add NSLocationWhenInUseUsageDescription in your plist

To use Volumedeck, you need to add the `NSLocationWhenInUseUsageDescription` key in your app's `Info.plist` file. Provide an appropriate description, such as "Volumedeck needs to read your current speed."

## Run in background

If you want Volumedeck to run when your app is in the background, follow these steps:

1. Pass the `runInBackground` property when initializing Volumedeck:

```swift
Volumedeck(runInBackground: true)
```

2. In the project settings, navigate to "Signing & Capabilities," add "Background Modes," and check "Location Updates."

## Objective-C
Volumedeck is fully compatible with `Objective-C`. When using Objective-C you can initialize Volumedeck using:

```objective-c
@import VolumedeckiOS;
```

```objective-c
@property Volumedeck *volumedeck;
```

and

```objective-c
if (self.volumedeck == nil) {
    self.volumedeck = [[Volumedeck alloc] init];
}
```

## Free to Use
Volumedeck SDK is free to use, providing you with the full functionality of the SDK without any time limitations. You are welcome to integrate it into both personal and commercial projects. When using Volumedeck SDK for free, a watermark will be presented during runtime. It is strictly prohibited  to hide, remove, or alter in any way the watermark from the free version of Volumedeck SDK.

### Activation Key and Watermark Removal
For those who wish to remove the watermark from their app, we offer an activation key that allows you to use the SDK without any watermarks. However, please be aware that the watermark-free version is not available for free and requires a purchase.

To inquire about purchasing an activation key or if you have any other questions related to licensing and usage, please contact us at team@navideck.com. We will be happy to assist you with the process and provide you with the necessary information.

## Contact

For questions or support, please contact us at team@navideck.com. Thank you for choosing Volumedeck SDK!