//
//  ViewController.swift
//  Volumedeck example
//
//  Created by Fotios Dimanidis on 20.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        speedLabel.text = String(speedSlider.value)
    }

   

    @IBAction func speedChanged(_ sender: UISlider) {
        let step: Float = 0.5
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
        speedLabel.text = String(speedSlider.value)
    }
    
    @IBAction func sendSpeed(_ sender: Any) {
        (view.window?.windowScene?.delegate as? SceneDelegate)?.volumedeck?.mockSpeed(speed: Double(speedSlider.value))
    }
}

