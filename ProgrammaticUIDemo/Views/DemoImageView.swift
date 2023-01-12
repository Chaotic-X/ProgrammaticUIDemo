//
//  DemoImageView.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/25/21.
//

import UIKit

class DemoImageView: UIImageView {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		configure(imageName: "")
	}
	
	required init?(coder: NSCoder) {
		fatalError("No Freaking Storyboards for you!!! Please Die!")
	}
	
    init(imageName: HeadImageType) {
		super.init(frame: .zero)
        self.image = UIImage(named: imageName.returnImage)
        configure(imageName: imageName.returnImage)
	}
	
    private func configure(imageName: String) {
		layer.cornerRadius = 19
		clipsToBounds = true
		translatesAutoresizingMaskIntoConstraints = false
        imageName == "lookAtMe" ? (contentMode = .scaleAspectFill) : (contentMode = .scaleAspectFit)
	}
}
enum HeadImageType: String {
    
    case first
    case second
    case third
    case fourth
    case lookAtMe
    
    var returnImage: String {
        switch self {
            case .first:
               return "firstVCHeader"
            case .second:
                return "secondVCHeader"
            case .third:
                return "thirdVCHeader"
            case .fourth:
                return "fourthVCHeader"
            case .lookAtMe:
                return "lookAtMe"
        }
    }
}
