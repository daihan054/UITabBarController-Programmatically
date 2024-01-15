//
//  UIViewControllerExtension.swift
//  ProgressHud2
//
//  Created by REVE Systems on 14/1/24.
//

import Foundation

extension UIViewController {
    func startLoading() {
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.mode = .indeterminate
        hud.label.text = "Loading..."
    }
    
    func stopLoading() {
        MBProgressHUD.hide(for: self.view, animated: true)
    }
}
