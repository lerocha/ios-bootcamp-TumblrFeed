//
//  ApiManagerHelper.swift
//  TumblrFeed
//
//  Created by Rocha, Luis on 3/29/17.
//  Copyright © 2017 Rocha, Luis. All rights reserved.
//

import Foundation

class ApiManagerHelper : NSObject {
    
    static let sharedInstance = ApiManagerHelper()
    var posts = [Post]()
    
    func getPosts(completionHandler: @escaping([Post])->Void) {
        ApiManager.sharedInstance.getFeeds { (data) in
            for item in data {
                let postModel = Post()
                postModel.blog_name = item["blog_name"] as! String
                postModel.date = item["date"] as! String
                postModel.summary = item["summary"] as! String
                postModel.imageLink = item["image_permalink"] as! String
                self.posts.append(postModel)
            }
            completionHandler(self.posts)
        }
    }
    
}
