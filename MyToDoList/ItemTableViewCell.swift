//
//  ItemTableViewCell.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    var item: ItemProtocol?
    
    var titleLabel = UILabel()
    var detailLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        titleLabel.frame = CGRectMake(10, 10, CGRectGetWidth(frame)-20, 36)
        addSubview(titleLabel)
        
        detailLabel.frame = CGRectMake(10, CGRectGetMaxY(frame)+10, CGRectGetWidth(frame)-20, 36)
        addSubview(detailLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Update the content of the table view cell
    
    func setContent(item: ItemProtocol) {
        self.item = item
        
        titleLabel.text = item.title
        detailLabel.text = item.detail
    }
    
    class func cellHeight() -> CGFloat {
        return 100.0
    }

}
