//
//  DetailViewController.swift
//  Books_2
//
//  Created by admin on 29.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    let topTitle = UILabel()
    let longDescription = UILabel()
    let bookImage = UIImageView()
    var scrollView = UIScrollView()
    var image : String?
    var textView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupTopTitle()
        setupTextView()
        setupBookImage()
    }
    
    
    func setupTextView(){
        self.view.addSubview(textView)
        textView.text = longDescription.text
        textView.font = .systemFont(ofSize: 14, weight: .light)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        textView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        textView.topAnchor.constraint(equalTo: topTitle.bottomAnchor).isActive = true
        textView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    
    func setupTopTitle() {
        self.view.addSubview(topTitle)
        topTitle.font = .systemFont(ofSize: 25)
        topTitle.textAlignment = .center
        topTitle.numberOfLines = 0
        topTitle.translatesAutoresizingMaskIntoConstraints = false
        topTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        topTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -5).isActive = true
        topTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
    }
    
    func setupBookImage() {
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
