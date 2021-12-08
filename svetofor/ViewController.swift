//
//  ViewController.swift
//  svetofor
//
//  Created by Artem Zhuzhgin on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    var numberPress = 0
    
    @IBAction func buttonPress(_ sender: Any) {
        
        numberPress += 1
        switch numberPress {
        case 1 :
            redLightView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        case 2:
            yellowView.alpha = 1
            redLightView.alpha = 0.3
            greenView.alpha = 0.3
        default :
            greenView.alpha = 1
            redLightView.alpha = 0.3
            yellowView.alpha = 0.3
            numberPress = 0
        }
        
    }
    @IBOutlet var buttonText: UIButton!
    
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        greenView.alpha = 0.3
        yellowView.alpha = 0.3
        
        
        // Do any additional setup after loading the view.
    }


}

