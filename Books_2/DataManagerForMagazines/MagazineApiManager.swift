//
//  MagazineApiManager.swift
//  Books_2
//
//  Created by admin on 31.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class MagazineApiManager  {
        private let urlPath = "https://firebasestorage.googleapis.com/v0/b/testfirebase-d377b.appspot.com/o/magazines.json?alt=media&token=e3cbb4b4-22ed-4c67-8c7b-7b51f3a12bb7"
        private var jsonParser = MagazineJsonDataGetter()
        func getData(completion: @escaping (([Magazine]?) -> Void)) {
            guard let url = URL(string: urlPath) else {
                completion(nil)
                return
                
            }
            let request = URLRequest(url: url)
            let session = URLSession(configuration: .default)
            let urlTask = session.dataTask(with: request) { [weak self] data, response, error in
                guard let data = data,
                    error == nil
                    else {
                        print("\n\n DataTaskError ---> \(String(describing: error))")
                        completion(nil)
                        return
                }
                self?.jsonParser.decodeJson(myData: data) { data in
                    completion(data)
                }
                
            }
            urlTask.resume()
            
        }
        
    }
        
