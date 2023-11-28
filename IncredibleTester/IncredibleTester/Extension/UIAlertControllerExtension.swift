//
//  UIAlertControllerExtension.swift
//  IncredibleTester
//
//  Created by Sanghyun on 11/28/23.
//

import UIKit

typealias CustomAlertAction = (title: String, action: Action, style: UIAlertAction.Style)

/**
 action cases
 */
enum Action: String {
    case cancellation
    case haptic
    case wKWebView
}

extension UIAlertController {
    
    /**
     configure UIAlertController
     */
    func configure(caller: HomeViewController, alertActions: [CustomAlertAction]) {
        alertActions.forEach { alertAction in
            self.addAction(UIAlertAction(title: alertAction.title, style: alertAction.style) { _ in
                caller.viewModel.presentTestViewController(action: alertAction.action, caller: caller)
            })
        }
    }
    
}
