//
//  ViewController.swift
//  Color Slider
//
//  Created by Christopher Crookes on 2020-07-11.
//  Copyright © 2020 Christopher Crookes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorBoxView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        changeColorBox()
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        print("slider changed")
        changeColorBox()
    }
    
    func changeColorBox(){
        let redValue = CGFloat(redSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        
        colorBoxView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
}

