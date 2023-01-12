//
//  MainTBC.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/24/21.
//

import UIKit

class MainTBC: UITabBarController, UITabBarControllerDelegate {
	
	private var previousIndex = 0
	
    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBarAppearance = UITabBar.appearance()
        tabBarAppearance.backgroundColor = .firstVCBGC
        tabBarAppearance.isTranslucent = true
        tabBarAppearance.tintColor = .systemOrange

		self.viewControllers = [firstTab(), secondTab(), addItemTab(), thirdTab(), fourthTab()]
		self.delegate = self
    }

	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
		print("Tab Index:", tabBarController.selectedIndex)
		if tabBarController.selectedIndex == 2 {
			tabBarController.selectedIndex = previousIndex
			actionAlert()
		} else {
			previousIndex = tabBarController.selectedIndex
		}
	}
}
