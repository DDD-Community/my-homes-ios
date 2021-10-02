//
//  AppDelegate.swift
//  MyHomes
//
//  Created by Kanghoon Oh on 2021/10/02.
//  Copyright © 2021 MyHomes. All rights reserved.
//

import UIKit
import SwiftUI

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    let contentView = ContentView()

    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = UIHostingController(rootView: contentView)
    self.window?.makeKeyAndVisible()

    return true
  }
}
