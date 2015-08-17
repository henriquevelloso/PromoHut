//
//  HutImageViewRounded.swift
//  PromoHut
//
//  Created by Henrique Velloso on 8/10/15.
//  Copyright © 2015 Orbe. All rights reserved.
//

import UIKit

@IBDesignable
class HutImageViewRounded: UIImageView {


    @IBInspectable var cornerRadius : CGFloat = 15
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            return  UIColor(CGColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.CGColor
        }
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        self.layoutIfNeeded()
        
            layer.cornerRadius = self.cornerRadius
       
        
    }
    

    
}
