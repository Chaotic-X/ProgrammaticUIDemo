//
//  DemoTwoVC.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/24/21.
//

import UIKit

class DemoTwoVC: UIViewController {

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
        let cancelItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismissVC(_:)))
        navigationItem.leftBarButtonItem = cancelItem
		navigationController?.isNavigationBarHidden = false
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .demoTwoBGC
		title = "Demo 02"
    }
    
    @objc func dismissVC(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
