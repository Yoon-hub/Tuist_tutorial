//
//  AppDelegate.swift
//  App
//
//  Created by 최윤제 on 2023/10/21.
//  Copyright © 2023 com.tuist_tutorial. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI
import NetworkKit
import YoonKit

@main class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = UIHostingController(rootView: SplashView())
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
    
}
    
