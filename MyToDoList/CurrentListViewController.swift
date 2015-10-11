//
//  CurrentListViewController.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import UIKit

class CurrentListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    // MARK: - Setup the table view
    
    func setupTableView() {
        tableView = UITableView(frame: CGRectMake(0, 0, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        tableView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        tableView.backgroundColor = UIColor.clearColor()
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    
    // MARK: - Table view
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(CurrentListDataManager.sharedInstance.items.count)
        return CurrentListDataManager.sharedInstance.items.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return ItemTableViewCell.cellHeight()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "currentListCellIdentifier"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? ItemTableViewCell
        if (cell == nil) {
            cell = ItemTableViewCell(style: .Default, reuseIdentifier: cellIdentifier)
        }
        
        let item = CurrentListDataManager.sharedInstance.items[indexPath.row]
        cell?.setContent(item)
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
