//
//  DataManager.swift
//  Books_2
//
//  Created by admin on 28.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class DataManager {
    
    static let shared = DataManager()
    private var apiManager = APIManager()

    func getUniversalData(completion: @escaping ([Universal]?) -> () ) {
        getData { data in
            guard let data = data else {
                // bad link
                completion(nil)
                return
            }
            completion(data)
        }
    }
    
    private func getData(completion: @escaping ([Universal]?) -> () ) {
        apiManager.getData { data in
            completion(data)
        }
    }
}
