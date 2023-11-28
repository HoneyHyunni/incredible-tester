//
//  HomeViewModel.swift
//  IncredibleTester
//
//  Created by Sanghyun on 11/28/23.
//

import UIKit

class HomeViewModel {
    
    func configureAlertController(of alertController: UIAlertController, caller: HomeViewController) {
        alertController.configure(caller: caller, alertActions: [
            (Constants.ACTION_TITLE_HAPTIC, .haptic, .default),
            (Constants.ACTION_TITLE_WK_WEB_VIEW, .wKWebView, .default),
            (Constants.ACTION_TITLE_CANCELLATION, .cancellation, .cancel)
        ])
    }
    
    func presentTestViewController(action: Action, caller: HomeViewController) {
        switch action {
        case .haptic:
            caller.present(UIStoryboard(name: Constants.STORYBOARD_ID, bundle: .main).instantiateViewController(withIdentifier: Constants.UI_VIEW_CONT_HAPTIC), animated: true)
        case .wKWebView:
            caller.present(UIStoryboard(name: Constants.STORYBOARD_ID, bundle: .main).instantiateViewController(withIdentifier: Constants.UI_VIEW_CONT_WK_WEB_VIEW), animated: true)
        case .cancellation:
            print("\(action.rawValue) is selected.")
        }
    }
    
}
