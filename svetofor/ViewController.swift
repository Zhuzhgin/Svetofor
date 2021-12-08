//
//  ViewController.swift
//  svetofor
//
//  Created by Artem Zhuzhgin on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var buttonText: UIButton!

    var numberPress = 0
    
    @IBAction func buttonPress(_ sender: Any) {
        
        buttonText.setTitle("Next", for: .normal)
        
        numberPress += 1
        
        switch numberPress {
        case 1 :
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        case 2:
            yellowView.alpha = 1
            redView.alpha = 0.3
            greenView.alpha = 0.3
        default :
            greenView.alpha = 1
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            numberPress = 0
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        greenView.alpha = 0.3
        yellowView.alpha = 0.3
       
        greenView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        redView.layer.cornerRadius = 50
    }


}

