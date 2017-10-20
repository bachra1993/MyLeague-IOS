//
//  ChampionsListViewController.swift
//  MyLeague
//
//  Created by bechir kaddech on 10/1/17.
//  Copyright © 2017 bechir kaddech. All rights reserved.
//

import UIKit
import AlamofireImage

class ChampionsListViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{

    
    
    @IBOutlet weak var collectionView : UICollectionView!
    
    
    var championList = [Champions]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        //Navigation bar config
        let sideImage = UIImage(named: "ic_reorder_white")?.withRenderingMode(.alwaysOriginal)
        let sideButton = UIBarButtonItem(image: sideImage,  style: .plain, target: self, action: #selector(didTapSideButton))
        navigationItem.leftBarButtonItems = [sideButton]
        
        
        getChampionsList(url: Urls.CHAMPIONS_LIST)

    }


    func didTapSideButton() {
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return championList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChampionsCell", for: indexPath) as! ChampionsListCollectionViewCell

        let champion = championList.sorted { $0.name! < $1.name! }[indexPath.row]
        let url = URL(string : "\(Urls.CHAMPION_PICTURE)\(champion.full_image!)")
        
        cell.champion_picture.af_setImage(withURL: url!)
        
        
        return cell

    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width =  collectionView.frame.width / 3 - 1
        
        return CGSize(width: width, height: width )
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    
    
    func getChampionsList(url : String) {
        AFWrapper.requestGETwithHeader(url, headers: Urls.header, success: { (JsonObject) in
            
            print(JsonObject["data"])
            
            for (key,value) in JsonObject["data"] {
                var champion = Champions()
                champion.id = JsonObject["data"][key]["id"].string!
                champion.name = JsonObject["data"][key]["name"].string!
                champion.key = JsonObject["data"][key]["key"].string!
                champion.title = JsonObject["data"][key]["title"].string!
                champion.full_image = JsonObject["data"][key]["image"]["full"].string!
                champion.sprite_image = JsonObject["data"][key]["image"]["sprite"].string!
                
                self.championList.append(champion)
     
                
            }
            self.collectionView.reloadData()
            
            
        }) { (Error) in
            print(Error)
        }
        
    }


}



