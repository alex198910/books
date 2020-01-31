//
//  CellTableViewCell.swift
//  Books_2
//
//  Created by admin on 28.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    let info = UILabel()
    let bookImage = UIImageView()
    let short = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupShort()
        setupInfo()
        setupImage()
        // Configure the view for the selected state
    }
    
    func setupShort(){
        addSubview(short)
        short.frame = CGRect(x: 120, y: 70, width: 245, height: 30)
        
        short.numberOfLines = 0
        short.sizeToFit()
        short.textAlignment = .left
        short.font = .systemFont(ofSize: 9, weight: .light)
    }
    
    func setupInfo(){
        addSubview(info)
        info.frame = CGRect(x: 120, y: 0, width: 245, height: 70)
        info.numberOfLines = 0
        info.sizeToFit()
        info.textAlignment = .left
    }
    
    func setupImage(){
        addSubview(bookImage)
        bookImage.frame = CGRect(x: 0, y: 0, width: 110, height: 200)
        
    }
    
}
