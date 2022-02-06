//
//  ViewController.swift
//  colorSetting
//
//  Created by Максим Хабиров on 03.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
        setColor()
        
    }

    @IBAction func sliderAction() {
        
        redLabel.text = String(round(100 * (redSlider.value)) / 100)
        greenLabel.text = String(round(100 * (greenSlider.value)) / 100)
        blueLabel.text = String(round(100 * (blueSlider.value)) / 100)
        
        setColor()
        
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}

