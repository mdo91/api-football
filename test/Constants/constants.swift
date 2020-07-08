//
//  constants.swift
//  test
//
//  Created by Mdo on 06/07/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import Foundation
import Alamofire
//MARK: - Service url

 let url = "http://api.football-data.org/v2/competitions"

let headers: HTTPHeaders = [
    "Authorization": "Basic e938990585bd40a2b6bdcd0fc92c6b2e",
    "Accept": "application/json"
]

//MARK: - arrays

var mainCompetitionData : [competitions] = []
