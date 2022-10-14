//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Sarah Al-Towaity on 13/10/2022.
//

import UIKit
import Parse
import AlamofireImage

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // --- Copy this only
        
        let parseConfig = ParseClientConfiguration {
                $0.applicationId = "9WUnfneZTfxJyFjjUJ2L97UwZX4ZqdKHJucJsl8P" // <- UPDATE
                $0.clientKey = "SPkb3Hb9KYK0nfF44oySTO3qEWTS6cJeZm2UIuqF" // <- UPDATE
                $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        
        // --- end copy
        return true
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

