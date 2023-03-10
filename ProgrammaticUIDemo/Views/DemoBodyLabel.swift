//
//  DemoBodyLabel.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/25/21.
//

import UIKit

class DemoBodyLabel: UILabel {

	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	init(textAlignment: NSTextAlignment) {
		super.init(frame: .zero)
		self.textAlignment = textAlignment
		configure()
	}
	
	private func configure() {
		textColor = .secondaryLabel
		adjustsFontSizeToFitWidth = true
		minimumScaleFactor = 0.75
		lineBreakMode = .byWordWrapping
		font = UIFont.preferredFont(forTextStyle: .body)
		translatesAutoresizingMaskIntoConstraints = false
	}

}
