//
//  DetailViewController.swift
//  Books_2
//
//  Created by admin on 29.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    let info = UILabel()
    let longD = UILabel()
    let bookImage = UIImageView()
    var scrollView = UIScrollView()
    var image : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.addSubview(info)
        self.view.addSubview(bookImage)
        
        scrollView.addSubview(longD)
        self.view.addSubview(scrollView)
        
        
        info.frame = CGRect(x: 20, y: 85, width: 320, height: 100)
        info.numberOfLines = 0
        info.font = .systemFont(ofSize: 25, weight: .bold)
        info.textAlignment = .center
        
//        longD.frame = CGRect(x: 25, y: 25, width: 310, height: 100)

        longD.numberOfLines = 0
        longD.font = .systemFont(ofSize: 15, weight: .light)
        longD.textAlignment = .left
        longD.sizeToFit()
        
        longD.translatesAutoresizingMaskIntoConstraints = false
        longD.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        longD.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        longD.topAnchor.constraint(equalTo: info.bottomAnchor, constant: 30).isActive = true
        longD.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
//        scrollView.frame = CGRect(x: 20, y: 130, width: 350, height: 1800)
        //scrollView = UIScrollView(frame: UIScreen.main.bounds)
//        scrollView.contentSize = CGSize(width: longD.frame.width, height: longD.frame.height + 1300)
        //scrollView.contentSize = longD.bounds.size
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: info.bottomAnchor, constant: 30).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        //image = (image?.replacingOccurrences(of: "images/", with: ""))
        bookImage.frame = UIScreen.main.bounds
        bookImage.image = UIImage(named: image ?? "no_image.png")
        bookImage.alpha = 0.2
        

        // Do any additional setup after loading the view.
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
