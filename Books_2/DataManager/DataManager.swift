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

    func getMovies(completion: @escaping ([Book]?) -> () ) {
        getData { data in
            guard let data = data else {
                // bad link
                completion(nil)
                return
            }
            // json data
//            DispatchQueue.global(qos: .background).async{
//                CoreDataManager.shared.add(movies: data)
//            }
            completion(data)
        }
    }
    
    private func getData(completion: @escaping ([Book]?) -> () ) {
        apiManager.getData { data in
            completion(data)
        }
    }
}