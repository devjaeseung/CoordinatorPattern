//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by 콰가 on 2022/02/18.
//

import UIKit

// MainCoordinator는 여러 VC를 넘나들것이다.
class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    // ViewController를 NavigationController 위에 올려줌.
    // 맨처음 앱 시작시 rootViewController 설정.
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    // BuyViewController로 이동
    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    // CreateAccountViewController로 이동
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
}
