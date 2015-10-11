//
//  CurrentListDataManager.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import UIKit

class CurrentListDataManager: NSObject {
    
    var items = [ItemProtocol]()
    
    static let sharedInstance = CurrentListDataManager()
    
    func fakeData() {
        
        let item1 = Item(title: "Hello Chicago", detail: "cold, China town, and others.")
        let item2 = Item(title: "Hello SF", detail: "Lyft, Uber, and China town")
        
        // This is a bug.
        // items += [item1, item2]
        items.append(item1)
        items.append(item2)
    }
    
    // TODO: update it to Core Data?
    
}
