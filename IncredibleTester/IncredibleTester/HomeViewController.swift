//
//  HomeViewController.swift
//  IncredibleTester
//
//  Created by Sanghyun on 11/28/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let viewModel = HomeViewModel()
    private let alertController = UIAlertController(title: Constants.ALERT_CONT_TITLE, message: Constants.ALERT_CONT_DISCRIPT, preferredStyle: .actionSheet)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.configureAlertController(of: self.alertController, caller: self)
    }
    
    @IBAction func selectView(_ sender: Any) {
        self.present(self.alertController, animated: true)
    }
    
}
