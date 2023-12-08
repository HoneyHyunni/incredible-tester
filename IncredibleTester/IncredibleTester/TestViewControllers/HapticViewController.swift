//
//  HapticViewController.swift
//  IncredibleTester
//
//  Created by Sanghyun on 11/24/23.
//

import UIKit

class HapticViewController: UIViewController {
    
    let heavyFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.heavyFeedbackGenerator.prepare()
    }
    
    
    @IBAction func impactHeavy(_ sender: Any) {
        self.heavyFeedbackGenerator.impactOccurred()
    }
    
    @IBAction func impactH2(_ sender: Any) {
        if #available(iOS 13.0, *) {
            self.heavyFeedbackGenerator.impactOccurred(intensity: 0.2)
        }
    }
    
    @IBAction func impactH4(_ sender: Any) {
        if #available(iOS 13.0, *) {
            self.heavyFeedbackGenerator.impactOccurred(intensity: 0.4)
        }

    }
    
    @IBAction func impactH6(_ sender: Any) {
        if #available(iOS 13.0, *) {
            self.heavyFeedbackGenerator.impactOccurred(intensity: 0.6)
        }

    }
    
    @IBAction func impactH8(_ sender: Any) {
        if #available(iOS 13.0, *) {
            self.heavyFeedbackGenerator.impactOccurred(intensity: 0.8)
        }

    }
    
    @IBAction func impactH10(_ sender: Any) {
        if #available(iOS 13.0, *) {
            self.heavyFeedbackGenerator.impactOccurred(intensity: 1.0)
        }

    }
    
}
