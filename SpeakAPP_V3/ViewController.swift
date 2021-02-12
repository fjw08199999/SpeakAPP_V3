//
//  ViewController.swift
//  SpeakAPP_V3
//
//  Created by fred fu on 2021/2/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var setLangungeSegmented: UISegmentedControl!
    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var speedSliderValue: UISlider!
    @IBOutlet weak var pitchMultiplierSliderValue: UISlider!
    @IBOutlet weak var volumeSliderValue: UISlider!
    
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var pitchMultiplierLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var speedLabelValue: UILabel!
    @IBOutlet weak var pitchMultiplierLabelValue: UILabel!
    @IBOutlet weak var volumeLabelValue: UILabel!
    
    @IBOutlet weak var randomButtenText: UIButton!
    @IBOutlet weak var speakButtenText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func randomButten(_ sender: Any) {
    }
    
    @IBAction func speakButten(_ sender: Any) {
    }
}

