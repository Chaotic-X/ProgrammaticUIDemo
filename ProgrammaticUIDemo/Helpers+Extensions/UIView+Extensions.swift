//
//  UIView+Extensions.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/24/21.
//

import UIKit

extension UIView {
	
	func anchor(top: NSLayoutYAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, leading: NSLayoutXAxisAnchor? = nil, trailing: NSLayoutXAxisAnchor? = nil, paddingTop: CGFloat? = nil, paddingBottom: CGFloat? = nil, paddingLeft: CGFloat? = nil, paddingRight: CGFloat? = nil, width: CGFloat? = nil, height: CGFloat? = nil) {
		
		self.translatesAutoresizingMaskIntoConstraints = false
		
		if let top = top, let paddingTop = paddingTop {
			self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
		}
		if let bottom = bottom, let paddingBottom = paddingBottom {
			self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
		}
		if let leading = leading, let paddingLeft = paddingLeft{
			self.leadingAnchor.constraint(equalTo: leading, constant: paddingLeft).isActive = true
		}
		if let trailing = trailing, let paddingRight = paddingRight {
			self.trailingAnchor.constraint(equalTo: trailing, constant: -paddingRight).isActive = true
		}
		if let width = width {
			self.widthAnchor.constraint(equalToConstant: width).isActive = true
		}
		if let height = height {
			self.heightAnchor.constraint(equalToConstant: height).isActive = true
		}
	} //End Anchor Method
	
} //End of extension
