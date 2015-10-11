//
//  UIFont+CustomizedFont.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import Foundation
import UIKit

/// Support customized font
///
/// Strongly typed
/// Mapping between strings and a new type
/// UIFont non-failable init
///
/// About the implemetation, visit Swift in Practice in WWDC 2015
///
extension UIFont {
    
    enum CustomizedFont: String {
        case OpenSans_Bold = "OpenSans-Bold"
    }
    
    convenience init!(customizedFont: CustomizedFont, size: CGFloat) {
        self.init(name: customizedFont.rawValue, size: size)
    }
}