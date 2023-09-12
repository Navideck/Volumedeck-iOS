//
//  AppDelegate.swift
//  Volumedeck example
//
//  Created by Fotios Dimanidis on 20.01.23.
//

import UIKit
import VolumedeckiOS

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var volumedeck: Volumedeck?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
        
    /// Only for demonstration purposes. Use this when no SceneDelegate is present. Not called in this example app as SceneDelegate is used instead
    func applicationDidBecomeActive(_ application: UIApplication) {
        volumedeck = volumedeck ?? Volumedeck(runInBackground: true)
                
        // Set status
        volumedeck?.start()
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

