//
//  ViewController.swift
//  SpeakAPP_V3
//
//  Created by fred fu on 2021/2/13.
//

import UIKit
import AVFoundation

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
    
    //點擊空白處收鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
    }
    //輸入完點擊return收鍵盤
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLangungeSegmented.setTitle("說出中文", forSegmentAt: 0)
        setLangungeSegmented.setTitle("Speak English", forSegmentAt: 1)
        
        // 預設反灰文字
        inputField.placeholder = "請輸入文字"
        // 鍵盤上的return變成done
        inputField.returnKeyType = .done
        // 圓角
        inputField.borderStyle = .roundedRect
        // 輸入框內 右邊顯示X 可以清除文字
        inputField.clearButtonMode = .whileEditing
        // UITextField的背景顏色
        inputField.backgroundColor = UIColor.lightText
        
        speedLabel.text = "速度"
        pitchMultiplierLabel.text = "語調"
        volumeLabel.text = "音量"
        
        speedLabelValue.text = String(format: "%.2f", speedSliderValue.value)
        pitchMultiplierLabelValue.text = String(format: "%.2f", pitchMultiplierSliderValue.value)
        volumeLabelValue.text = String(format: "%.2f", volumeSliderValue.value)
        
        randomButtenText.setTitle("隨機產生", for: .normal)
        randomButtenText.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        speakButtenText.setTitle("👄", for: .normal)
        speakButtenText.titleLabel?.font = UIFont.systemFont(ofSize: 100)
        
    }
    
    
    @IBAction func speedSlider(_ sender: UISlider) {
        let speedNumber = String(format: "%.2f", sender.value)
        speedLabelValue.text = speedNumber
    }
    
    @IBAction func pitchMultiplierSlider(_ sender: UISlider) {
        let pitchMultiplierNumber = String(format: "%.2f", sender.value)
        pitchMultiplierLabelValue.text = pitchMultiplierNumber
    }
    
    @IBAction func volumeSlider(_ sender: UISlider) {
        let volumeNumber = String(format: "%.2f", sender.value)
        volumeLabelValue.text = volumeNumber
    }
    
    @IBAction func randomButten(_ sender: UIButton) {
        
        //按下按鈕收鍵盤 (使用於按鈕Function內)
        view.endEditing(true)
        
        speedSliderValue.value = Float.random(in: 0...1)
        pitchMultiplierSliderValue.value = Float.random(in: 0...1)
        volumeSliderValue.value = Float.random(in: 0...1)
        
        speedLabelValue.text = String(format: "%.2f", speedSliderValue.value)
        pitchMultiplierLabelValue.text = String(format: "%.2f", pitchMultiplierSliderValue.value)
        volumeLabelValue.text = String(format: "%.2f", volumeSliderValue.value)
        
    }
    
    @IBAction func speakButten(_ sender: UIButton) {
        
        //按下按鈕收鍵盤 (使用於按鈕Function內)
        view.endEditing(true)
        
        let arabicSpeechUtterance = AVSpeechUtterance(string: inputField.text!)
        let arbicSpeechSynthesizer = AVSpeechSynthesizer()
        
        arabicSpeechUtterance.voice = AVSpeechSynthesisVoice(language: "zh=TW")
        arabicSpeechUtterance.rate = speedSliderValue.value
        arabicSpeechUtterance.pitchMultiplier = pitchMultiplierSliderValue.value
        arabicSpeechUtterance.volume = volumeSliderValue.value
        
        arbicSpeechSynthesizer.speak(arabicSpeechUtterance)
        
        
    }
}

