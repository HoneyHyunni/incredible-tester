//
//  HapticViewController.swift
//  IncredibleTester
//
//  Created by Sanghyun on 11/24/23.
//

import UIKit

class HapticViewController: UIViewController {
    
    var notificationFeedbackGenerator = UINotificationFeedbackGenerator()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.notificationFeedbackGenerator.prepare()
    }

    @IBAction func vibrateSuccess(_ sender: Any) {
        self.notificationFeedbackGenerator.notificationOccurred(.success)
    }
    
    @IBAction func vibrateWarning(_ sender: Any) {
        self.notificationFeedbackGenerator.notificationOccurred(.warning)
    }
    
    @IBAction func vibrateError(_ sender: Any) {
        self.notificationFeedbackGenerator.notificationOccurred(.error)
    }
    
}

