//
//  HapticViewController.swift
//  IncredibleTester
//
//  Created by Sanghyun on 11/24/23.
//

import UIKit

class HapticViewController: UIViewController {
    
    let selectionFeedbackGenerator = UISelectionFeedbackGenerator()
    let notificationFeedbackGenerator = UINotificationFeedbackGenerator()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.selectionFeedbackGenerator.prepare()
        self.notificationFeedbackGenerator.prepare()
    }

//    @IBAction func vibrateImpact1(_ sender: Any) {
//        let impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
//        impactFeedbackGenerator.prepare()
//        impactFeedbackGenerator.impactOccurred()
//    }
//    
//    @IBAction func vibrateImpact2(_ sender: Any) {
//        if #available(iOS 13, *) {
//            let impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .rigid)
//            impactFeedbackGenerator.prepare()
//            impactFeedbackGenerator.impactOccurred(intensity: 1)
//        }
//    }
//    
//    @IBAction func vibrateSelection(_ sender: Any) {
//        self.selectionFeedbackGenerator.selectionChanged()
//    }
//    
//    @IBAction func vibrateSuccess(_ sender: Any) {
//        self.notificationFeedbackGenerator.notificationOccurred(.success)
//    }
//    
//    @IBAction func vibrateWarning(_ sender: Any) {
//        self.notificationFeedbackGenerator.notificationOccurred(.warning)
//    }
//    
//    @IBAction func vibrateError(_ sender: Any) {
//        self.notificationFeedbackGenerator.notificationOccurred(.error)
//    }
    
}

