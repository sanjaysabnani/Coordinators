//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Sanjay Sabnani on 4/25/20.
//  Copyright © 2020 Sanjay Sabnani. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoorniators = [Coordinator]()
    
    internal var navController: UINavigationController
    
    init(navController : UINavigationController) {
        self.navController = navController
    }
    
    func start() {
        let vc = ViewController.instantiateViewController()
        vc.mainCoordinator = self
        navController.pushViewController(vc, animated: true)
    }
    
    func buyViewController(){
        let buyVC = BuyViewController.instantiateViewController()
        buyVC.mainCoordinator = self
        navController.pushViewController(buyVC, animated: true)
        
    }
    func openAccoutViewController(){
        let openAC = OpenAccountViewController.instantiateViewController()
        openAC.mainCoordinator = self
        navController.pushViewController(openAC, animated: true)
        
    }
    
    
}
