//
//  TopViewCVC.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/24/21.
//

import UIKit

class TopViewCVC: UIViewController {

//	let headerImage = DemoImageView(imageName: "firstVCHeader")
    var headerImageName: HeadImageType
    let headerImage: UIImageView
	let headerTitle = DemoTitleLabel(setText: "TopView VC", textAlignment: .center, fontSize: 30)
	let headerStack: UIStackView = {
		let stack = UIStackView()
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.alignment = .center
		stack.distribution = .fill
		stack.axis = .horizontal
		stack.spacing = 20
		return stack
	}()
	    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(headerImageName: HeadImageType) {
        self.headerImageName = headerImageName
        self.headerImage = DemoImageView(imageName: headerImageName)
        super.init(nibName: nil, bundle: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .topViewBGC
		setUpViews()
    }
	
	func setUpViews() {
//        guard let headerImage = headerImage else { return }
		view.addSubview(headerStack)
		headerStack.addArrangedSubview(headerImage)
		headerStack.addArrangedSubview(headerTitle)
		
		NSLayoutConstraint.activate([
			headerStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			headerStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            headerStack.heightAnchor.constraint(equalTo: view.heightAnchor),
//            headerStack.widthAnchor.constraint(equalTo: view.widthAnchor),
			
			headerImage.centerYAnchor.constraint(equalTo: headerStack.centerYAnchor),
			headerImage.heightAnchor.constraint(equalToConstant: 80),
			headerImage.widthAnchor.constraint(equalTo: headerImage.heightAnchor),

			headerTitle.centerYAnchor.constraint(equalTo: headerStack.centerYAnchor)
		])
	}
}



