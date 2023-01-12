//
//  DemoOneVC.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/24/21.
//

import UIKit

class DemoOneVC: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .demoOneBGC
		let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC(_:)))
		navigationItem.rightBarButtonItem = doneItem
		navigationItem.title = "Demo 01"
	}

	@objc func dismissVC(_ sender: UIBarButtonItem) {
		self.dismiss(animated: true, completion: nil)
	}
}
