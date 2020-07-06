//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by Bhabani on 13/05/20.
//  Copyright © 2020 Bhabani. All rights reserved.
//

import UIKit

class FirstViewController: BasicViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .green
        
        title = "Home"
        
        button1.setTitle("View2", for: .normal)
        button2.setTitle("View3", for: .normal)
        button3.setTitle("View4", for: .normal)
        button4.setTitle("Home", for: .normal)
        
        
        button1.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        button3.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        button4.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        
        
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
            self.navigationController?.pushViewController(FirstViewController(), animated: true)
        default:
            return
        }
    }


}

