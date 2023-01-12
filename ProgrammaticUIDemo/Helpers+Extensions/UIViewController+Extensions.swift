//
//  UIViewController+Extensions.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/24/21.
//

import UIKit

extension UIViewController {
	//MARK: -Add containerview as child to Parent ViewController
	func add(childVC: UIViewController, to containerView: UIView) {
		addChild(childVC)
		containerView.addSubview(childVC.view)
		childVC.view.frame = containerView.bounds
		childVC.didMove(toParent: self)
	}
	
	func actionAlert() {
		let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
		let demoOne = UIAlertAction(title: "Demo 01", style: .default) { action in
			let demoOneVC = DemoOneVC()
			let demoOneNav = UINavigationController(rootViewController: demoOneVC)
			demoOneNav.modalPresentationStyle = .automatic
			demoOneNav.modalTransitionStyle = .coverVertical
			demoOneNav.isModalInPresentation = true
			self.present(demoOneNav, animated: true)
		}
		
		let demoTwo = UIAlertAction(title: "Demo 02", style: .default) { action in
			let demoTwoVC = DemoTwoVC()
			let demoTwoNav = UINavigationController(rootViewController: demoTwoVC)
//			self.navigationController?.pushViewController(demoTwoNav, animated: true)
			demoTwoNav.modalPresentationStyle = .fullScreen
			demoTwoNav.modalTransitionStyle = .flipHorizontal
			demoTwoNav.isModalInPresentation = false
			self.present(demoTwoNav, animated: true)
		}
		
		let demoThree = UIAlertAction(title: "Demo 03", style: .default) { action in
			let demoThreeVC = DemoThreeVC()
//			self.navigationController?.pushViewController(demoThreeVC, animated: true)
			self.show(demoThreeVC, sender: self)
		}
		let cancel = UIAlertAction(title: "Cancel", style: .cancel) { action in
			alert.dismiss(animated: true, completion: nil)
		}
		alert.addAction(demoOne)
		alert.addAction(demoTwo)
		alert.addAction(demoThree)
		alert.addAction(cancel)
		alert.pruneNegativeWidthConstraints()
		present(alert, animated: true, completion: nil)
	}
	
	func firstTab() -> UIViewController {
		let firstNVC = FirstVC()
		firstNVC.title = "Tab 01"
		let notifyImage = UIImage(systemName: "1.circle.fill", withConfiguration: .tabBarConfig)
		firstNVC.tabBarItem = UITabBarItem(title: firstNVC.title, image: notifyImage, tag: 0)
		return firstNVC
	}
	
	func secondTab() -> UIViewController {
		let secondNVC = SecondVC()
		secondNVC.title = "Tab 02"
		let historyImage = UIImage(systemName: "2.circle.fill", withConfiguration: .tabBarConfig)
		secondNVC.tabBarItem = UITabBarItem(title: secondNVC.title, image: historyImage, tag: 1)
		return secondNVC
	}
	
	func addItemTab() -> UIViewController {
		let addItemAC = UIViewController()
		let addItemImage = UIImage(systemName: "plus.circle", withConfiguration: .tabBarConfig)
		addItemAC.tabBarItem = UITabBarItem(title: "Add", image: addItemImage, tag: 2)
		return addItemAC
	}
	
	func thirdTab() -> UIViewController {
		let thirdNVC = ThirdVC()
		thirdNVC.title = "Tab 03"
		let mpgImage = UIImage(systemName: "3.circle.fill", withConfiguration: .tabBarConfig)
		thirdNVC.tabBarItem = UITabBarItem(title: thirdNVC.title, image: mpgImage, tag: 3)
		return thirdNVC
	}
	
	func fourthTab() -> UIViewController {
		let fourthNVC = FourthVC()
		fourthNVC.title = "Concerns"
		let concernImage = UIImage(systemName: "4.circle.fill", withConfiguration: .tabBarConfig)
		fourthNVC.tabBarItem = UITabBarItem(title: fourthNVC.title, image: concernImage, tag: 4)
		return fourthNVC
	}
}

extension UIAlertController {
	func pruneNegativeWidthConstraints() {
		for subView in self.view.subviews {
			for constraint in subView.constraints where constraint.debugDescription.contains("width == - 16") {
				subView.removeConstraint(constraint)
			}
		}
	}
}
