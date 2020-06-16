//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by Bhabani on 13/05/20.
//  Copyright © 2020 Bhabani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        
        self.view.backgroundColor = .green
        
        title = "Home"
        
        button1.setTitle("View2", for: .normal)
        button2.setTitle("View3", for: .normal)
        button3.setTitle("View4", for: .normal)
        button4.setTitle("Home", for: .normal)
        
        button3.backgroundColor = .systemBlue
        button3.tag = 3
        button1.backgroundColor = .systemBlue
        button1.tag = 1
        button2.backgroundColor = .systemBlue
        button2.tag = 2
        button4.backgroundColor = .systemBlue
        button4.tag = 4
        
        button1.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        button3.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        button4.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupButton()
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
    
    func setConstraint(){
        button4.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        button1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button4.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        button1.trailingAnchor.constraint(equalTo: button2.leadingAnchor, constant: -10).isActive = true
        button2.trailingAnchor.constraint(equalTo: button3.leadingAnchor, constant: -10).isActive = true
        button3.trailingAnchor.constraint(equalTo: button4.leadingAnchor, constant: 10).isActive = true
        button4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        button1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60).isActive = true
        button2.bottomAnchor.constraint(equalTo: button1.bottomAnchor).isActive = true
        button3.bottomAnchor.constraint(equalTo: button1.bottomAnchor).isActive = true
        button4.bottomAnchor.constraint(equalTo: button1.bottomAnchor).isActive = true
    }

    @objc func presentView(_ button: UIButton){
        switch button.tag {
        case 1:
            if title == "2nd Scene"{
                return
            }
            self.navigationController?.pushViewController(SecondViewController(), animated: true)
        case 2:
            if title == "3rd Scene"{
                return
            }
            self.navigationController?.pushViewController(ThirdViewController(), animated: true)
        case 3:
            if title == "4th Scene"{
                return
            }
            self.navigationController?.pushViewController(ForthViewController(), animated: true)
        case 4:
            if title == "Home"{
                return
            }
            self.navigationController?.pushViewController(ViewController(), animated: true)
        default:
            return
        }
    }


}

