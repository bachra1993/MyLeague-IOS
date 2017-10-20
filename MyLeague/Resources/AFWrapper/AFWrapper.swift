//
//  AFWrapper.swift
//  MyLeague
//
//  Created by bechir kaddech on 10/20/17.
//  Copyright © 2017 bechir kaddech. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AFWrapper: NSObject {
    
    static let sharedInstance = AFWrapper()
    
    //Get request with Header Only
    class func requestGETwithHeader(_ strURL : String, headers : [String : String]?, success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void){
        Alamofire.request(strURL, method: .get, encoding: JSONEncoding.default, headers: headers).validate(statusCode: 200...200).responseJSON { (responseObject) -> Void in
            if responseObject.result.isSuccess {
                let resJson = JSON(responseObject.result.value!)
                success(resJson)
            }
            if responseObject.result.isFailure {
                let error : Error = responseObject.result.error!
                failure(error)
            }
        }
    }


}

