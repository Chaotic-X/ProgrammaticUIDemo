//
//  FirstVC.swift
//  ProgrammaticUIDemo
//
//  Created by Alex Lundquist on 3/24/21.
//

import UIKit

class FirstVC: UIViewController {
	
    var showImage = false
	let devImage: DemoImageView = {
        let image = DemoImageView(imageName: .lookAtMe)
		//		image.alpha = 0
		return image
	}()
	let showDev = DemoButton(backgroundColor: .systemTeal, title: "Show Ugliest Dev")
	
	let scrollView: UIScrollView = {
		let scroll = UIScrollView()
		scroll.translatesAutoresizingMaskIntoConstraints = false
		return scroll
	}()
	
	let middleStack: UIStackView = {
		let stack = UIStackView()
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.backgroundColor = .systemPink
		stack.axis = .vertical
		stack.alignment = .center
		stack.distribution = .fill
		stack.spacing = 8
		return stack
	}()
	let stackView: UIStackView = {
		let stack = UIStackView()
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.backgroundColor = .systemOrange
		stack.axis = .vertical
		stack.alignment = .center
		stack.distribution = .fill
		stack.spacing = 5
		return stack
	}()
	
	let topView: UIView = {
		let top = UIView()
        top.clipsToBounds = true
        top.layer.cornerRadius = 18
		return top
	}()
    
	let middleView: UIView = {
		let middle = UIView()
		middle.backgroundColor = .systemTeal
		middle.layer.cornerRadius = 10
		middle.clipsToBounds = true
		middle.translatesAutoresizingMaskIntoConstraints = false
		return middle
	}()
	
	let bottomView: UIView = {
		let bottom = UIView()
		bottom.layer.cornerRadius = 8
		bottom.clipsToBounds = true
		return bottom
	}()
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.isNavigationBarHidden = true
//		devImage.isHidden = false
//		let viewOffset = devImage.center.y * -2
		devImage.isHidden = true
		let viewOffset = CGFloat(-336.6666666666667)
		print(devImage.frame.size.height)
		print(viewOffset)
		let viewScale = CGAffineTransform(scaleX: 1, y: 0)
		let viewTranslate = CGAffineTransform(translationX: 1, y: viewOffset)
		devImage.transform = viewScale.concatenating(viewTranslate)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		devImage.isHidden = true
		view.backgroundColor = .firstVCBGC
        add(childVC: TopViewCVC(headerImageName: .first), to: topView)
		add(childVC: FirstMiddleCVC(), to: middleView)
		add(childVC: BottomViewCVC(), to: bottomView)
		addAndConstrainSubViews()
		showDev.addTarget(self, action: #selector(showDevButtonTapped), for: .touchUpInside)
	}
	
	func addAndConstrainSubViews() {
		view.addSubview(topView)
		view.addSubview(scrollView)
		scrollView.addSubview(stackView)
		stackView.addArrangedSubview(middleView)
		middleView.addSubview(middleStack)
		middleStack.addArrangedSubview(devImage)
		middleStack.addArrangedSubview(showDev)
		stackView.addArrangedSubview(bottomView)
		
        topView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, paddingTop: 0, paddingLeft: 12, paddingRight: 12, height: 120)
		
		NSLayoutConstraint.activate([
			scrollView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 5),
			scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
			scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			
			stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
			stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
			stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
			stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
			
			middleView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
			middleView.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.92, constant: 1),
			middleView.heightAnchor.constraint(equalToConstant: 600),
			
			middleStack.topAnchor.constraint(equalTo: middleView.topAnchor),
			middleStack.leadingAnchor.constraint(equalTo: middleView.leadingAnchor),
			middleStack.trailingAnchor.constraint(equalTo: middleView.trailingAnchor),
			
			devImage.centerXAnchor.constraint(equalTo: middleStack.centerXAnchor),
			devImage.widthAnchor.constraint(equalTo: middleStack.widthAnchor, multiplier: 0.85, constant: 1),
			devImage.heightAnchor.constraint(equalTo: devImage.widthAnchor),
			
			showDev.centerXAnchor.constraint(equalTo: middleStack.centerXAnchor),
			showDev.widthAnchor.constraint(equalTo: middleStack.widthAnchor, multiplier: 0.85, constant: 1),
			
			bottomView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
			bottomView.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.92, constant: 1),
			bottomView.heightAnchor.constraint(equalToConstant: 120)
			
		])
	}
	@objc func showDevButtonTapped() {
		print(devImage.isHidden)
		print("\(devImage.bounds.size.height)")
		print("\(devImage.bounds.size.height / 2)")
		print("\(devImage.center.y)")
		
		print("Button was tapped")
        
        imageAnimation(showImage)

	}
    
    func imageAnimation(_ animate: Bool) {
        if !animate {
            UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut) { [self] in
                devImage.isHidden = false
                devImage.transform = .identity
            }
            showImage = true
        } else {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut) { [self] in
                devImage.isHidden = true
                let viewOffset = CGFloat(-336.6666666666667)
                print(viewOffset)
                devImage.transform = CGAffineTransform.identity.scaledBy(x: 1, y: 0).concatenating(CGAffineTransform.identity.translatedBy(x: 1, y: viewOffset))
                print("End of close animation")
            }
            showImage = false
        }
    }
}

