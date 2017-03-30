//
//  ApiManager.swift
//  TumblrFeed
//
//  Created by Rocha, Luis on 3/29/17.
//  Copyright © 2017 Rocha, Luis. All rights reserved.
//

import Foundation

import AFNetworking

class ApiManager : NSObject {
    static let sharedInstance = ApiManager()
    
    func getFeeds(completionHandler: @escaping([[String: Any]]) -> Void) {
        let manager = AFHTTPSessionManager()
        manager.get("https://api.tumblr.com/v2/blog/humansofnewyork.tumblr.com/posts/photo?api_key=Q6vHoaVm5L1u2ZAW1fqv3Jw48gFzYVg9P0vH0VHl3GVy6quoGV", parameters: nil, progress: nil, success: { (operation, response) in
            if let dict = response as? [String: Any], let data = dict["response"] as? [String: Any], let posts = data["posts"] as? [[String: Any]] {
                completionHandler(posts)
            }
        }) { (operation, error) in
            print(error)
        }
    }
}
