//
//  HapticViewController.swift
//  IncredibleTester
//
//  Created by Sanghyun on 11/24/23.
//

import UIKit

class HapticViewController: UIViewController {
    
    let impactFeedbackGenerator = UIImpactFeedbackGenerator()
    let notificationFeedbackGenerator = UINotificationFeedbackGenerator()
    let selectionFeedbackGenerator = UISelectionFeedbackGenerator()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.selectionFeedbackGenerator.prepare()
        self.notificationFeedbackGenerator.prepare()
    }
    
    
    @IBAction func impact2(_ sender: Any) {
        print(2)
    }
    
    @IBAction func impact4(_ sender: Any) {
    }
    
    @IBAction func impact6(_ sender: Any) {
    }
    
    @IBAction func impact8(_ sender: Any) {
    }
    
    @IBAction func impact10(_ sender: Any) {
    }
    
    @IBAction func notifySuccess(_ sender: Any) {
    }
    
    @IBAction func notifyWarning(_ sender: Any) {
    }
    
    @IBAction func notifyError(_ sender: Any) {
    }
    
    @IBAction func vibrateSelection(_ sender: Any) {
    }
    
}
