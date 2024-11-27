//
//  ViewController.swift
//  week2
//
//  Created by labuser on 15/11/2024.
//

import UIKit

class ViewController: UIViewController {
var clickCount = 0
    
    @IBOutlet weak var Switch1: UISwitch!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var laber2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderAction(_ sender: Any) {}

    @IBAction func slider2(_ sender: Any) {
        
    }
    
    @IBAction func Switch1(_ sender: Any) {
        if(Switch1.isOn){
            laber2.isHidden = false
            button1.isHidden = false
        }
        else{
            laber2.isHidden = true
            button1.isHidden = true
        }
    }
    @IBAction func buttonClick(_ sender: Any) {
        clickCount += 1
        if clickCount % 2 == 1 {
            laber2.text = "Welcome to mobile app"
        }
        else {laber2.text = "Hello World"}
    }
}

