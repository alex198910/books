//
//  CellTableViewCell.swift
//  Books_2
//
//  Created by admin on 28.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    let titleHeadline = UILabel()
    let shortDescription = UILabel()
    let imageOfProduct = UIImageView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.backgroundColor = UIColor(red:0.87, green:0.65, blue:0.65, alpha:0.20)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupShort()
        setupInfo()
        setupImage()
        // Configure the view for the selected state
    }
    
    func setupShort() {
        addSubview(shortDescription)
        shortDescription.frame = CGRect(x: 120, y: 70, width: self.frame.width - 125, height: 30)
        shortDescription.numberOfLines = 0
        shortDescription.sizeToFit()
        shortDescription.textAlignment = .left
        shortDescription.font = .systemFont(ofSize: 9, weight: .light)
    }
    
    func setupInfo() {
        addSubview(titleHeadline)
        titleHeadline.frame = CGRect(x: 120, y: 0, width: 245, height: 70)
        titleHeadline.numberOfLines = 0
        titleHeadline.sizeToFit()
        titleHeadline.textAlignment = .left
    }
    
    func setupImage() {
        addSubview(imageOfProduct)
        imageOfProduct.frame = CGRect(x: 0, y: 0, width: 110, height: 200)
    }
}
