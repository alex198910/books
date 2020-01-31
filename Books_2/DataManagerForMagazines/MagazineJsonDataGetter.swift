//
//  MagazineJsonDataGetter.swift
//  Books_2
//
//  Created by admin on 31.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class MagazineJsonDataGetter {
        func decodeJson(myData: Data, comletion: @escaping (([Magazine]?) -> Void)) {
            do {
                let jsonData = try JSONDecoder().decode([Magazine].self, from: myData)
                comletion(jsonData)
                
            } catch {
                //print("Error during parsing ---> \(error) ")
                comletion(nil)
                
            }
            
        }
            
    }
