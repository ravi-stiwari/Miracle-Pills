//
//  MainVC.swift
//  MiraclePills
//
//  Created by Ravi Tiwari on 3/4/17.
//  Copyright © 2017 Digite Inc. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var stateSelectButton: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var buyNowButton: UIButton!
    
    let states = ["Uttar Pradesh", "Madhya Pradesh", "Andhra Pradesh", "Arunachal Pradesh", "Gujrat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    @IBAction func stateSelectButtonPressed(_ sender: UIButton) {
        statePicker.isHidden = false
        buyNowButton.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateSelectButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        buyNowButton.isHidden = false
    }
    
    @IBAction func buyNowButtonPressed(_ sender: UIButton) {
        
    }
}

