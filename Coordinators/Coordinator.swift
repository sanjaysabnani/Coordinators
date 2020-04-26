//
//  Coordinator.swift
//  Coordinators
//
//  Created by Sanjay Sabnani on 4/25/20.
//  Copyright © 2020 Sanjay Sabnani. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoorniators : [Coordinator] {get set}
    var navController : UINavigationController {get set}
    func start()
}
