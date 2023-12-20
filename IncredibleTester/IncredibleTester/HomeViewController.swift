//
//  HomeViewController.swift
//  IncredibleTester
//
//  Created by Sanghyun on 11/28/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var stepsLabel: UILabel!
    
    let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("⎿ HomeViewController view 로딩 완료")
        if stepsLabel.text?.isEmpty == true { stepsLabel.text = "걸음수를 확인 중입니다." }
    }
    
}
