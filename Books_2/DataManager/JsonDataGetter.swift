//
//  JsonDataGetter.swift
//  Books_2
//
//  Created by admin on 28.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

import UIKit

class JsonDataGetter {
    func decodeJson(myData: Data, comletion: @escaping (([Book]?) -> Void)) {
        do {
            let jsonData = try JSONDecoder().decode([Book].self, from: myData)
            comletion(jsonData)
            
        } catch {
            //print("Error during parsing ---> \(error) ")
            comletion(nil)
            
        }
        
    }
        
}
