//
//  ChampionsListViewController.swift
//  MyLeague
//
//  Created by bechir kaddech on 10/1/17.
//  Copyright © 2017 bechir kaddech. All rights reserved.
//

import UIKit

class RegionsListViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var doneBTN: UIButton!
    
    let regions : [String] = ["North Amercia","EU West","EU Nordic & East","Oceania","Russia","Turkey","Brazil","Latin America North","Latin America South","Republic of Korea","Japan"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        doneBTN.isEnabled = false
        self.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        self.title = "Select your region!"
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return regions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RegionsCell", for: indexPath) as! RegionsCellCollectionViewCell
        
        
        cell.name.text = regions[indexPath.row]
        
        return cell

    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? RegionsCellCollectionViewCell
        
        doneBTN.isEnabled = true
        doneBTN.setTitle("Done", for: .normal)

        cell?.container.backgroundColor = Color.aqua
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? RegionsCellCollectionViewCell
        
        cell?.container.backgroundColor = Color.dark
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width =  collectionView.frame.width / 2 - 1
        
        return CGSize(width: width, height: width )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }


    
    @IBAction func doneAction(_ sender: Any) {
       
    }
    

}
