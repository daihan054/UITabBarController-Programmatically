//
//  CustomTabBarController.swift
//  ReveChatDemo
//
//  Created by REVE Systems on 15/1/24.
//

import UIKit

let GAP = 20.0;

class CustomTabBarController: UITabBarController {
    
    private var dividerView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVC = ChatViewController()
        let firstUnselectedImage = UIImage(systemName: "message")
        let firstSelectedImage = UIImage(systemName: "message.fill")
        firstVC.tabBarItem = UITabBarItem(title: "Chat", image: firstUnselectedImage, selectedImage: firstSelectedImage)

        let secondVC = AgentViewController()
        let secondUnselectedImage = UIImage(systemName: "square.and.arrow.down")
        let secondSelectedImage = UIImage(systemName: "square.and.arrow.down.on.square.fill")
        secondVC.tabBarItem = UITabBarItem(title: "Agents", image: secondUnselectedImage, selectedImage: secondSelectedImage)

        let thirdVC = TicketViewController()
        let thirdUnselectedImage = UIImage(systemName: "rectangle.portrait.and.arrow.right")
        let thirdSelectedImage = UIImage(systemName: "rectangle.portrait.and.arrow.right.fill")
        thirdVC.tabBarItem = UITabBarItem(title: "Tickets", image: thirdUnselectedImage, selectedImage: thirdSelectedImage)

        let fourthVC = SettingViewController()
        let fourthUnselectedImage = UIImage(systemName: "trash.circle")
        let fourthSelectedImage = UIImage(systemName: "trash.circle.fill")
        fourthVC.tabBarItem = UITabBarItem(title: "Settings", image: fourthUnselectedImage, selectedImage: fourthSelectedImage)

        let viewControllerList = [firstVC, secondVC, thirdVC, fourthVC]
        viewControllers = viewControllerList.map { UINavigationController(rootViewController: $0) }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if dividerView == nil {
            let divider = UIView(frame: CGRect(x: 0, y: tabBar.frame.origin.y - 20, width: tabBar.frame.width, height: 1))
            divider.backgroundColor = .gray
            view.addSubview(divider)
            dividerView = divider
        }
    }
}
