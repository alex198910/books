//
//  AppDelegate.swift
//  Books_2
//
//  Created by admin on 27.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let startViewController = ViewControllerStart()
        let navigationController = UINavigationController(rootViewController: startViewController)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
        // Override point for customization after application launch.
    }

}

