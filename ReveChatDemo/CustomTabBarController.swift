//
//  CustomTabBarController.swift
//  ReveChatDemo
//
//  Created by REVE Systems on 15/1/24.
//

import UIKit

let GAP = 80.0;

class CustomTabBarController: UITabBarController {
    
    private var dividerView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setValue(CustomTabBar(), forKey: "tabBar")
        
        let firstVC = ChatViewController()
        let firstUnselectedImage = UIImage(named: "ChatCircleText")
        let firstSelectedImage = UIImage(named: "ChatCircleTextSelected")
        firstVC.tabBarItem = UITabBarItem(title: "Chat", image: firstUnselectedImage, selectedImage: firstSelectedImage)

        let secondVC = AgentViewController()
        let secondUnselectedImage = UIImage(named: "AgentsUnselected")
        let secondSelectedImage = UIImage(named: "AgentsSelected")
        secondVC.tabBarItem = UITabBarItem(title: "Agents", image: secondUnselectedImage, selectedImage: secondSelectedImage)

        let thirdVC = TicketViewController()
        let thirdUnselectedImage = UIImage(named: "ticketsUnselected")
        let thirdSelectedImage = UIImage(named: "ticketsSelected")
        thirdVC.tabBarItem = UITabBarItem(title: "Tickets", image: thirdUnselectedImage, selectedImage: thirdSelectedImage)

        let fourthVC = SettingViewController()
        let fourthUnselectedImage = UIImage(named: "settingsUnselected")
        let fourthSelectedImage = UIImage(named: "settingsSelected")
        fourthVC.tabBarItem = UITabBarItem(title: "Settings", image: fourthUnselectedImage, selectedImage: fourthSelectedImage)
        

        let viewControllerList = [firstVC, secondVC, thirdVC, fourthVC]
        viewControllers = viewControllerList.map { UINavigationController(rootViewController: $0) }
        
        repositionTabBarItems()
        
        setupTabBarItemAppearance()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if dividerView == nil {
            let divider = UIView(frame: CGRect(x: 0, y: tabBar.frame.origin.y - 20, width: tabBar.frame.width, height: 2))
            divider.backgroundColor = UIColor.gray.withAlphaComponent(0.1)
            view.addSubview(divider)
            dividerView = divider
        }
    }
    
    private func repositionTabBarItems() {
        if let items = tabBar.items {
            for tab in items {
                tab.imageInsets = UIEdgeInsets(top: -10, left: 0, bottom: 10, right: 0)
                tab.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -12)
            }
        }
    }
    
    private func setupTabBarItemAppearance() {
        if let items = tabBar.items {
            for tab in items {
                let normalAttributes: [NSAttributedString.Key: Any] = [
                    .font: UIFont.systemFont(ofSize: 12, weight: .semibold),
                    .foregroundColor: UIColor(red: 0.435, green: 0.51, blue: 0.58, alpha: 1)
                ]

                let selectedAttributes: [NSAttributedString.Key: Any] = [
                    .font: UIFont.systemFont(ofSize: 12, weight: .bold),
                    .foregroundColor: UIColor.black
                ]

                tab.setTitleTextAttributes(normalAttributes, for: .normal)
                tab.setTitleTextAttributes(selectedAttributes, for: .selected)
            }
        }
    }
}
