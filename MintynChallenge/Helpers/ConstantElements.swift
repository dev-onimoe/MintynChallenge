//
//  Constants.swift
//  MintynChallenge
//
//  Created by Mas'ud on 11/23/22.
//

import Foundation
import UIKit

class ConstantsElements {
    
    //MARK: - Fonts and Colors
    
    static let gold = UIColor(red: 181/255, green: 135/255, blue: 54/255, alpha: 1)
    static let darkGold = UIColor(red: 38/255, green: 29/255, blue: 9/255, alpha: 1)
    static let yellow = UIColor(red: 206/255, green: 162/255, blue: 60/255, alpha: 1)
    static let nameColor = UIColor(red: 198/255, green: 200/255, blue: 201/255, alpha: 1)
    static let black = UIColor(red: 13/255, green: 13/255, blue: 60/255, alpha: 1)
    static let itemGrey = UIColor(red: 10/255, green: 10/255, blue: 10/255, alpha: 1)
    static let logoGrey = UIColor(red: 40/255, green: 39/255, blue: 39/255, alpha: 1)
    static let fieldBgColor = UIColor(red: 41/255, green: 38/255, blue: 39/255, alpha: 1)
    
    static func boldFont(size: Int) -> UIFont {
        
        return UIFont(name: "Poppins-Bold", size: CGFloat(size))!
    }
    
    static func regularFont(size: Int) -> UIFont {
        
        return UIFont(name: "Poppins-Regular", size: CGFloat(size))!
    }
    
    static func lightFont(size: Int) -> UIFont {
        
        return UIFont(name: "Poppins-Light", size: CGFloat(size))!
    }
    
    static func serifFont(size: Int) -> UIFont {
        
        return UIFont(name: "DMSerifDisplay-Regular", size: CGFloat(size))!
    }
    
    static func spectral(size: Int) -> UIFont {
        
        return UIFont(name: "Spectral-Medium", size: CGFloat(size))!
    }
}
