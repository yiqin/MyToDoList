//
//  UIImage+AssetCatalogIdentifier.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    
    // TODO: - Add asset identifiers here
    enum AssetIdentifier: String {
        case NongoodName = ""
    }
    
    // FIXME: - why put ! in the func name?
    convenience init!(assetIdentifier: AssetIdentifier) {
        self.init(named: assetIdentifier.rawValue)
    }
    
}
