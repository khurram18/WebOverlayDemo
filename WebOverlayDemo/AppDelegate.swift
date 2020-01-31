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
  var window: UIWindow?
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    WebOverlay.sharedInstance.start(with: [StartOptions.topTitle: "hello", StartOptions.bottomTitle: "world", StartOptions.closeButtonImageName: "close"])
    return true
  }
  func applicationWillEnterForeground(_ application: UIApplication) {
    WebOverlay.sharedInstance.start(with: [StartOptions.topTitle: "hello", StartOptions.bottomTitle: "world", StartOptions.closeButtonImageName: "close"])
  }
}

