//
//  CustomPostCell.swift
//  TumblrFeed
//
//  Created by Rocha, Luis on 3/29/17.
//  Copyright © 2017 Rocha, Luis. All rights reserved.
//

import UIKit
import AFNetworking

class CustomPostCell : UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var postTitleLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    
    var post: Post? {
        didSet {
            if let title = post?.blog_name {
                postTitleLabel.text = title
            }
//            if let profileImageLink = post?.imageLink {
                //profileImageLink
//            }
        }
    }
}
