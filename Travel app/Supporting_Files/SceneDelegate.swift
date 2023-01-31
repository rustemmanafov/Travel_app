//
//  SceneDelegate.swift
//  Travel app
//
//  Created by Rustem Manafov on 18.01.23.
//

import UIKit
import IQKeyboardManagerSwift

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        if UserDefaults.standard.bool(forKey: "isLoggedIn") {
            navigateToTabBar()
        } else {
            navigateToOnboarding()
        }
        window?.makeKeyAndVisible()
    }
    
    func navigateToTabBar() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarVC") as! TabBarVC
        _ = UINavigationController(rootViewController: vc)
        window?.rootViewController = vc
    }
    // for logout
   func navigateToOnboarding() {
       let onboardingVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "navVC") as! UINavigationController
       window?.rootViewController = onboardingVC
    }

    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }


}

