//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by 콰가 on 2022/02/18.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyTapped(_ sender: Any) {
        print("구매 버튼 누르기")
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        print("계정 생성 하기")
        coordinator?.createAccount()
    }
    
}

