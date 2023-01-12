//
//  FourthVC.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/24/21.
//

import UIKit

class FourthVC: UIViewController {

    let topView: UIView = {
        let top = UIView()
        top.clipsToBounds = true
        top.layer.cornerRadius = 18
        return top
    }()
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.isNavigationBarHidden = true
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .fourthVCBGC
        add(childVC: TopViewCVC(headerImageName: .fourth), to: topView)
		addAndConstrainSubViews()
    }

	func addAndConstrainSubViews() {
		view.addSubview(topView)
		
		topView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingLeft: 12, paddingRight: 12, height: 120)
	}
	
}
