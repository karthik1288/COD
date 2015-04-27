//
//  NewsTableViewCell.swift
//  COD
//
//  Created by Karthik Narisetti on 04/16/15.
//  Copyright (c) 2015 Karthik Narisetti. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postImageView:UIImageView!
    @IBOutlet weak var authorImageView:UIImageView!
    @IBOutlet weak var postTitleLabel:UILabel!
    @IBOutlet weak var authorLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
