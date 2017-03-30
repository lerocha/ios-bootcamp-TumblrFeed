//
//  Post.swift
//  TumblrFeed
//
//  Created by Rocha, Luis on 3/29/17.
//  Copyright © 2017 Rocha, Luis. All rights reserved.
//

import Foundation


class Post : NSObject {
    
    var blog_name: String
    var date: String
    var summary: String
    var imageLink: String
    
    override init() {
        self.blog_name = ""
        self.date = ""
        self.summary = ""
        self.imageLink = ""
    }
}
