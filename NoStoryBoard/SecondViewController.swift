//
//  SecondViewController.swift
//  NoStoryBoard
//
//  Created by Bhabani on 13/05/20.
//  Copyright © 2020 Bhabani. All rights reserved.
//

import UIKit

class SecondViewController: BasicViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .cyan
        title = "2nd Scene"
        
        button1.setTitle("Home", for: .normal)
        button2.setTitle("View2", for: .normal)
        button3.setTitle("View3", for: .normal)
        button4.setTitle("View4", for: .normal)
        
        button1.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        button2.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        button3.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        button4.addTarget(self, action: #selector(presentView(_:)), for: .touchUpInside)
        
    }
    
    @objc func presentView(_ button: UIButton){
        switch button.tag {
        case 1:
            if title == "Home"{
                return
            }
            self.navigationController?.popToRootViewController(animated: true)
        case 2:
            if title == "2nd Scene"{
                return
            }
            self.navigationController?.pushViewController(SecondViewController(), animated: true)
        case 3:
            if title == "3rd Scene"{
                return
            }
            self.navigationController?.pushViewController(ThirdViewController(), animated: true)
        case 4:
            if title == "4th Scene"{
                return
            }
            self.navigationController?.pushViewController(ForthViewController(), animated: true)
        default:
            return
        }
    }

}
