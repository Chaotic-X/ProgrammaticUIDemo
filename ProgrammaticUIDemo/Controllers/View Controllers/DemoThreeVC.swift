//
//  DemoThreeVC.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/24/21.
//

import UIKit

class DemoThreeVC: UIViewController {

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.isNavigationBarHidden = false
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .demotThreeBGC
		title = "Demo 03"
    }
    
}
