//
//  ViewController.swift
//  TumblrFeed
//
//  Created by Rocha, Luis on 3/29/17.
//  Copyright © 2017 Rocha, Luis. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ApiManagerHelper.sharedInstance.getPosts { (posts) in
            self.posts = posts
            self.tableView.reloadData()
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
        return cell
    }
    
    


}

