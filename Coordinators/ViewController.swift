//
//  ViewController.swift
//  Coordinators
//
//  Created by Sanjay Sabnani on 4/25/20.
//  Copyright © 2020 Sanjay Sabnani. All rights reserved.
//

import UIKit

class ViewController: UIViewController,Storyboarded {
    var mainCoordinator : MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openAccountTapped(_ sender: Any) {
        self.mainCoordinator?.openAccoutViewController()
    }
    @IBAction func buyButtontapped(_ sender: Any) {
        self.mainCoordinator?.buyViewController()
    }
    
}

