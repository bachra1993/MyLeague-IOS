//
//  SplashViewController.swift
//  MyLeague
//
//  Created by bechir kaddech on 10/1/17.
//  Copyright © 2017 bechir kaddech. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 10, delay: 0, options: [.repeat, .autoreverse] , animations: {
            self.backgroundImage.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
            })

    }

    @IBAction func startAction(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Regions", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "NavigationRegions")
        self.show(newViewController, sender: nil)
       
    }
    
}
