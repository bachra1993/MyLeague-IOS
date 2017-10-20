//
//  SplashViewController.swift
//  MyLeague
//
//  Created by bechir kaddech on 10/1/17.
//  Copyright © 2017 bechir kaddech. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func startAction(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Regions", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "NavigationRegions")
        self.show(newViewController, sender: nil)
       
    }
    
}
