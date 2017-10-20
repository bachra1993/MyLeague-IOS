//
//  Urls.swift
//  MyLeague
//
//  Created by bechir kaddech on 10/20/17.
//  Copyright © 2017 bechir kaddech. All rights reserved.
//

import Foundation


class Urls: NSObject {
    
   static let APIKEY : String = "RGAPI-7f825a26-8594-4983-a74a-b08e84325482"
   static let CHAMPIONS_LIST : String = "http://ddragon.leagueoflegends.com/cdn/7.20.3/data/en_US/champion.json"
   static let CHAMPIONS_LIST_FREE : String = "https://euw1.api.riotgames.com/lol/platform/v3/champions?freeToPlay=false"
    
    
    
    static let CHAMPION_PICTURE : String = "https://ddragon.leagueoflegends.com/cdn/7.20.3/img/champion/"
    
    
    
    
    static let header  = ["X-Riot-Token" : APIKEY]

    
    
}
