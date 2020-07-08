//
//  CompetitionParser.swift
//  test
//
//  Created by Mdo on 06/07/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import Foundation
import SwiftyJSON

class CompetitionParser {
    
    // vars
    
  //  var competitionData : [competitions] = []
     
    class func CompetitionParserJson(data:JSON)-> [competitions]{
        
        mainCompetitionData = []
        
        var resultCompetition : [competitions] = []
        
        if data.count > 0 {
            let competitionsDic = data["competitions"].arrayValue

 
            for item in competitionsDic{
                //item[""]
                var competitionItem = competitions()
    
                
                print("item key: \(item.dictionaryObject)")
                let info = item.dictionaryObject
                
                guard let competitionName = info!["name"] else{
                    
                    return []
                }
                guard let competitionCode = info!["code"]else{
                    return []
                }
                guard let competitionPlan = info!["plan"]else{
                    return []
                }
                guard let competiotionNumberOfAvailableSeasons = info!["numberOfAvailableSeasons"]else{
                    
                    return []
                }
                print("")
                
                competitionItem.name = competitionName as! String
                competitionItem.code = competitionCode as? String ?? ""
                competitionItem.numberOfAvailableSeasons = competiotionNumberOfAvailableSeasons as? String ?? ""
                competitionItem.plan = competitionPlan as! String
                
                guard let areaDic = info!["area"] else{
                    
                    return []
                }
                
                print("Competition name: \(competitionName)")
                print("area data \(areaDic)")
                guard let areaData = areaDic as? [String:Any] else{
                    print("error areaData casting")
                    return []
                }
                
                for (key,value) in areaData {
                    
                    print("key \(key)")
                    print("value \(value)")
                }
                
                mainCompetitionData.append(competitionItem)
                
               // for ()

                
   
                
            }
            return mainCompetitionData
        }else{
             return []
        }
        
       // return [:]
    }
}
