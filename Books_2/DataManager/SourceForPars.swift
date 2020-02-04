//
//  SourceForPars.swift
//  Books_2
//
//  Created by admin on 04.02.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import Foundation

class SourceForParse {
    
    static let shared = SourceForParse()
    
    var link: String = ""
    var typeOfArray: String = ""
    
    private let booksLink = "https://firebasestorage.googleapis.com/v0/b/testfirebase-d377b.appspot.com/o/listOfBooks.json?alt=media&token=2d5f38f7-57f2-42cb-8081-bb85c9573903"
    private let magazinesLink = "https://firebasestorage.googleapis.com/v0/b/testfirebase-d377b.appspot.com/o/magazines.json?alt=media&token=e3cbb4b4-22ed-4c67-8c7b-7b51f3a12bb7"
    
    func makeBookLink() {
        self.link = booksLink
        self.typeOfArray =  "\( type(of: [Book]()))"
    }
    func makeMagazineLink() {
        self.link = magazinesLink
        self.typeOfArray =  "\( type(of: [Magazine]()))"
    }
}
