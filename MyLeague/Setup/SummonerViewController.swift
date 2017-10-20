//
//  SummonerViewController.swift
//  MyLeague
//
//  Created by bechir kaddech on 10/1/17.
//  Copyright © 2017 bechir kaddech. All rights reserved.
//

import UIKit

class SummonerViewController: UIViewController {

    @IBOutlet weak var summoneriINPUT: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //Navigation Controller Configuration
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.title = "Enter Summoner Name"
        
        
        let borderBottom = CALayer()
        let borderWidth = CGFloat(3.0)
        borderBottom.borderColor = UIColor.white.cgColor
        borderBottom.frame = CGRect(x: 0, y: summoneriINPUT.frame.height - 1.0, width: summoneriINPUT.frame.width , height: summoneriINPUT.frame.height - 1.0)
        borderBottom.borderWidth = borderWidth
        summoneriINPUT.layer.addSublayer(borderBottom)
        summoneriINPUT.layer.masksToBounds = true
        
        
        let validImage = UIImage(named: "ic_check_white")?.withRenderingMode(.alwaysOriginal)
        let validButton = UIBarButtonItem(image: validImage,  style: .plain, target: self, action: #selector(didTapValidButton))
        
        navigationItem.rightBarButtonItems=[validButton]

        
    }

    func didTapValidButton() {
        
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Champions", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "NavigationChampions")
        self.show(newViewController, sender: nil)
        
        
        
        
    }
    

}
