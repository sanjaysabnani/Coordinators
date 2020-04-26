//
//  Storyboarded.swift
//  Coordinators
//
//  Created by Sanjay Sabnani on 4/25/20.
//  Copyright © 2020 Sanjay Sabnani. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiateViewController() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiateViewController()-> Self {
        let id = String.init(describing: self)
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return mainStoryBoard.instantiateViewController(identifier: id) as! Self
        
    }
    
}
