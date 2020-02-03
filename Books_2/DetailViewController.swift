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
        setupTopTitle()
        setupTextView()
        setupBookImage()
    }
    
    
    func setupTextView(){
        self.view.addSubview(textView)
        textView.text = longDescription.text
        textView.font = .systemFont(ofSize: 14, weight: .light)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        textView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        textView.topAnchor.constraint(equalTo: topTitle.bottomAnchor).isActive = true
        textView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    
    func setupTopTitle() {
        self.view.addSubview(topTitle)
        topTitle.frame = CGRect(x: 20, y: 85, width: 320, height: 100)
        topTitle.numberOfLines = 0
        topTitle.font = .systemFont(ofSize: 25, weight: .bold)
        topTitle.textAlignment = .center
    }
    
    func setupLongDescription(){
        scrollView.addSubview(longDescription)
        longDescription.numberOfLines = 0
        longDescription.font = .systemFont(ofSize: 15, weight: .light)
        longDescription.textAlignment = .left
        //longDescription.sizeToFit()
        longDescription.translatesAutoresizingMaskIntoConstraints = false
        longDescription.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        longDescription.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        longDescription.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 20).isActive = true
        longDescription.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func setupScrollView() {
        self.view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 30).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.contentSize = longDescription.frame.size
        scrollView.contentSize = CGSize(width: longDescription.frame.width, height: longDescription.frame.height + 1300)
    }
    
    func setupBookImage() {
        self.view.addSubview(bookImage)
        bookImage.frame = UIScreen.main.bounds
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
