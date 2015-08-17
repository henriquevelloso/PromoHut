//
//  HutNavigationItem.swift
//  PromoHut
//
//  Created by Henrique Velloso on 8/15/15.
//  Copyright © 2015 HenriqueVelloso. All rights reserved.
//

import UIKit

class HutNavigationItem: UINavigationItem {

     var ImageName: String = "PromoHut_logo"
     var ImageSpace: CGFloat = 0
    
    
    override func awakeFromNib() {
        
        let image : UIImage = UIImage(named: self.ImageName)!
        let imageView : UIImageView = UIImageView(image: image)
        
        let viewMaster : UIView = UIView(frame: CGRectMake(0, 0, imageView.frame.width, imageView.frame.height + self.ImageSpace))
        viewMaster.addSubview(imageView)
        
        self.titleView = viewMaster

        
     
        
    }

    
}
