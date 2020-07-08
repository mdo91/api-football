//
//  Network.swift
//  test
//
//  Created by Mdo on 06/07/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Network{
    
  //  var data : [competitions] = []

   
    
    static func getCompetitionData(completion: @escaping(_ data: [competitions]?,_ error:NSError?)->Void)->Void{
        
       
      
        

        AF.request(url,headers:headers).responseJSON { (data) in

            switch data.result{
                
            case .success(let json):
               // print("success \(json)")
                 let jsonData = try! JSON(data: data.data!)
                
                let CompetitionParserResult = CompetitionParser.CompetitionParserJson(data: jsonData)
                completion(CompetitionParserResult,nil)
                
            case .failure(let error):
                completion([], error as NSError)
                print("failure \(error)")
            }
        }
        

    }
}
