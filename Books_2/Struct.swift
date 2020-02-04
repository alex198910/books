//
//  Struct.swift
//  Books_2
//
//  Created by admin on 31.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation

struct Book: Decodable {
    var author: String?
    var country: String?
    var imageLink: String?
    var language: String?
    var link: String?
    var pages: Int?
    var title: String?
    var year: Int?
    var shortD: String?
    var longD: String?
}

struct Magazine: Decodable {
    var name: String?
    var date: String?
    var shortInfo: String?
    var longInfo: String?
    var firstPage: String?
    var price: Int?
    var period: String?
}


protocol Universal {
    var nameUniversal: String {get}
    var displayInfoForTableview: String {get}
    var displayInfoForDetailview: String {get}
    var shortMoreInfo: String {get}
    var mainPicture: String {get}
}

extension Magazine: Universal {
    var nameUniversal: String {
        (name ?? "") + "\n" + (date ?? "")
    }
    
    var displayInfoForTableview: String {
        shortInfo ?? ""
    }
    
    var displayInfoForDetailview: String {
        longInfo ?? ""
    }
    
    var shortMoreInfo: String {
        "frequency of publications - " + (period ?? "") + "\nprice - " + "\(price ?? 0)" + "$"
    }
    
    var mainPicture: String {
        firstPage ?? "no_image.png"
    }
    
    
}


extension Book: Universal {
    var nameUniversal: String {
        //"\(String(describing: title))\nby \(String(describing: author))"
        (title ?? "") + "\nby " + (author ?? "")
    }

    var displayInfoForTableview: String {
        shortD ?? ""
    }

    var displayInfoForDetailview: String {
        longD ?? ""
    }

    var shortMoreInfo: String {
        "\(year ?? 0)" + "  |  " + (country ?? "")
    }

    var mainPicture: String {
        imageLink?.replacingOccurrences(of: "images/", with: "") ?? "no_image.png"
    }
    
}
