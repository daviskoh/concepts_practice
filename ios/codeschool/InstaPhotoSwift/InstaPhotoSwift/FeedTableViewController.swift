//
//  FeedTableViewController.swift
//  InstaPhotoSwift
//
//  Created by Davis Koh on 9/23/15.
//  Copyright © 2015 com.DavisKoh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class FeedTableViewController: UITableViewController {
    var repos = [JSON]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Feed"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        Alamofire.request(.GET, "https://api.github.com/users/daviskoh/repos")
            .responseJSON { (req, res, result) in
                self.repos = JSON(result.value!).array!
                self.tableView.reloadData()
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return repos.count / 2
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // TODO: investigate why removing below breaks app
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier:"repo")
        let cell = tableView.dequeueReusableCellWithIdentifier("repo", forIndexPath: indexPath)

        let imagePath = self.repos[indexPath.row]["owner"]["avatar_url"].string
        let url = NSURL(string: imagePath!)
        let data = NSData(contentsOfURL: url!)
        let image = UIImage(data: data!)
        let imageView = UIImageView(image: image)
        imageView.frame = CGRectMake(0, 0, 50, 50)
        cell.addSubview(imageView)

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
}
