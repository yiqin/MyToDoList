//
//  ItemTableViewCell.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    var titleLabel: UILabel
    var detailLabel: UILabel
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        titleLabel = UILabel()
        
        
        detailLabel = UILabel()
        
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func cellHeight() -> CGFloat {
        return 100.0
    }

}
