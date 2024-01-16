//
//  CustomTabBar.swift
//  UITabBarController-storyboard
//
//  Created by REVE Systems on 15/1/24.
//

import UIKit

class CustomTabBar: UITabBar {

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 60
        return sizeThatFits
    }

}
