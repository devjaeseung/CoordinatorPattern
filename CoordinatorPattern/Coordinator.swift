//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by 콰가 on 2022/02/18.
//

import UIKit

protocol Coordinator {
    
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}


// Coordinator 패턴을 StoryBoard로 만들어진 View와 함께 사용할 수 있도록 하기 위함.!
protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {

    // Storyboard에 있는 ViewController를 사용하기위해 인스턴스화 하는 메서드
    static func instantiate() -> Self {
        
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        print("fullName : \(fullName)" )
        
        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        print("className : \(className)")
        
        // load our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        print("storyboard : \(storyboard)")
        
        // instantiate a view controller with that identifier, and force cast as the type was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
        
    }
    
}
