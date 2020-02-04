//
//  JsonDataGetter.swift
//  Books_2
//
//  Created by admin on 28.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class JsonDataGetter {
    func decodeJson(myData: Data, comletion: @escaping (([Universal]?) -> Void)) {
        do {
            let typeOfDecodableArray = SourceForParse.shared.typeOfArray
            switch typeOfDecodableArray {
            case "Array<Book>":
                do {let jsonData = try JSONDecoder().decode(Array<Book>.self, from: myData)
                comletion(jsonData)}
            case "Array<Magazine>":
                do {let jsonData = try JSONDecoder().decode(Array<Magazine>.self, from: myData)
                comletion(jsonData)}
            default:
                comletion(nil)
            }
            
        } catch {
            //print("Error during parsing ---> \(error) ")
            comletion(nil)
        }
        
    }
        
}
