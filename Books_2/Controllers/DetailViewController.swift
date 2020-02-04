//
//  DetailViewController.swift
//  Books_2
//
//  Created by admin on 29.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    let headlineTitle = UILabel()
    let bookImage = UIImageView()
    var longDescription = UITextView()
    var image: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupHeadlineTitle()
        setupLondDescription()
        setupBackgroundImage()
    }
    
    
    func setupHeadlineTitle() {
        self.view.addSubview(headlineTitle)
        headlineTitle.font = .systemFont(ofSize: 25)
        headlineTitle.textAlignment = .center
        headlineTitle.numberOfLines = 0
        headlineTitle.translatesAutoresizingMaskIntoConstraints = false
        headlineTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        headlineTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        headlineTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5).isActive = true
        headlineTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
    }
    
    
    func setupLondDescription() {
        self.view.addSubview(longDescription)
        longDescription.font = .systemFont(ofSize: 14, weight: .light)
        longDescription.translatesAutoresizingMaskIntoConstraints = false
        longDescription.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        longDescription.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        longDescription.topAnchor.constraint(equalTo: headlineTitle.bottomAnchor).isActive = true
        longDescription.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    

    func setupBackgroundImage() {
        self.view.addSubview(bookImage)
        bookImage.translatesAutoresizingMaskIntoConstraints = false
        bookImage.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        bookImage.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        bookImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        bookImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bookImage.image = UIImage(named: image ?? "no_image.png")
        bookImage.alpha = 0.2
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
