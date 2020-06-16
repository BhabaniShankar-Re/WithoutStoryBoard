//
//  ForthViewController.swift
//  NoStoryBoard
//
//  Created by Bhabani on 13/05/20.
//  Copyright © 2020 Bhabani. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {
    
    let button1, button2, button3, button4: UIButton
    
    init() {
        button1 = UIButton()
        button2 = UIButton()
        button3 = UIButton()
        button4 = UIButton()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        title = "4th Scene"
        
    }
    

    func setupButton(){
        
        button1.contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        button2.contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        button3.contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        button4.contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        
        button1.layer.cornerRadius = 9
        button2.layer.cornerRadius = 9
        button3.layer.cornerRadius = 9
        button4.layer.cornerRadius = 9
        
        
        let stack = UIStackView(arrangedSubviews: [button1, button2, button3, button4])
        
        view.addSubview(stack)
        
        stack.distribution = .equalSpacing
        stack.alignment = .fill
        
    
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.heightAnchor.constraint(equalToConstant: 50).isActive = true
        stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60).isActive = true
        
        
    }


}
