//
//  APIManager.swift
//  Books_2
//
//  Created by admin on 28.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class APIManager {
    private var jsonParser = JsonDataGetter()
    func getData(completion: @escaping (([Universal]?) -> Void)) {
        guard let url = URL(string: SourceForParse.shared.link) else {
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
    
