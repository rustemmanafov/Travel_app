//
//  ViewController+Ext.swift
//  Travel app
//
//  Created by Rustem Manafov on 25.01.23.
//

import UIKit

extension UIViewController {
    func changeRoot() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TabBarVC") as! TabBarVC
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.window?.rootViewController = vc
        appDelegate?.window?.makeKeyAndVisible()
    }
}
