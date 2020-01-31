//
//  MagazineDataManager.swift
//  Books_2
//
//  Created by admin on 31.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class MagazineDataManager {
        static let shared = MagazineDataManager()
        private var MApiManager = MagazineApiManager()

        func getMovies(completion: @escaping ([Magazine]?) -> () ) {
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
        
        private func getData(completion: @escaping ([Magazine]?) -> () ) {
            MApiManager.getData { data in
                completion(data)
            }
        }
    }
