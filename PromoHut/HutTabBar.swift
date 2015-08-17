//
//  HutTabBar.swift
//  PromoHut
//
//  Created by Henrique Velloso on 8/15/15.
//  Copyright © 2015 HenriqueVelloso. All rights reserved.
//

import UIKit

 @IBDesignable class HutTabBar: UITabBar {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBInspectable var itemColor : UIColor = UIColor.whiteColor()

    override func awakeFromNib() {
        
        UITabBar.appearance().tintColor = itemColor
        
        
    }
    
}
