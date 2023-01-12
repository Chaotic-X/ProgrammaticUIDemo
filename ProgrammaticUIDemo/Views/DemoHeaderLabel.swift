//
//  DemoHeaderLabel.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/25/21.
//

import UIKit

class DemoHeaderLabel: UILabel {

	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
		super.init(frame: .zero)
		self.textAlignment = textAlignment
		self.font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
		configure()
	}
	
	private func configure() {
		textColor = .secondaryLabel
		adjustsFontSizeToFitWidth = true
		minimumScaleFactor = 0.8
		lineBreakMode = .byTruncatingTail
		translatesAutoresizingMaskIntoConstraints = false
	}
}
