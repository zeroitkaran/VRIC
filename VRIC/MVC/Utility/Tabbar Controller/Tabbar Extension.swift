//
//  ViewController.swift
//  VRIC
//
//  Created by zeroit01 on 08/12/21.
//

import UIKit

func setRootViewController(viewController: UIViewController) {
        let navController = UINavigationController(rootViewController: viewController)
        navController.isNavigationBarHidden = true
        if appDelegate.window == nil {
            //Create New Window here
            appDelegate.window = UIWindow.init(frame: UIScreen.main.bounds)
        }
    UIApplication.shared.windows.first?.rootViewController = navController
    UIApplication.shared.windows.first?.makeKeyAndVisible()

    }

 func setTabBarController() {
    let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController
        setRootViewController(viewController: vc)
    }

