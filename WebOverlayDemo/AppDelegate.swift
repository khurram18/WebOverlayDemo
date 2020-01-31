//
//  AppDelegate.swift
//  WebOverlayDemo
//
//  Created by Khurram on 23/01/2020.
//  Copyright © 2020 Example. All rights reserved.
//

import WebOverlay
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    let notificationCenter = NotificationCenter.default
    notificationCenter.addObserver(forName: .webOverlayDidShow, object: nil, queue: nil) { _ in
      print("webOverlayDidShow")
    }
    notificationCenter.addObserver(forName: .webOverlayDidClose, object: nil, queue: nil) { notification in
      print("webOverlayDidClose:\(notification.userInfo)")
    }
    WebOverlay.sharedInstance.start(with: [StartOptions.topTitle: "hello", StartOptions.bottomTitle: "world", StartOptions.closeButtonImageName: "close"])
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

