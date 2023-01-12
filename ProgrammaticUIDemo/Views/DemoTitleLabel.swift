//
//  DemoTitleLabel.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/25/21.
//

import UIKit

class DemoTitleLabel: UILabel {

	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	init(setText: String?, textAlignment: NSTextAlignment, fontSize: CGFloat) {
		super.init(frame: .zero)
		if let setText = setText {
			self.text = setText
		}
		self.textAlignment = textAlignment
		self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
		configure()
	}
	
	private func configure() {
		textColor = .label
		adjustsFontSizeToFitWidth = true
		minimumScaleFactor = 0.9
		lineBreakMode = .byTruncatingTail
		translatesAutoresizingMaskIntoConstraints = false
	}

}
