//
//  PromocaoViewController.swift
//  PromoHut
//
//  Created by Henrique Velloso on 8/15/15.
//  Copyright © 2015 HenriqueVelloso. All rights reserved.
//

import UIKit

class PromocaoViewController: UIViewController ,  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout , UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var lblPromo01: UILabel!
    @IBOutlet weak var lblPromo02: UILabel!
    
    var currentIndexX : Int = 0
    var currentIndexY : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNeedsStatusBarAppearanceUpdate()
        // Do any additional setup after loading the view.
        
  
        self.setupCollectionView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        
        return UIStatusBarStyle.LightContent
        
    }
    
    
    //MARK: Custom Functions
    
    
    func setupCollectionView () {
        
        self.pageControl.numberOfPages = 3
        self.pageControl.currentPage = 0
        
        let flowLayout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        flowLayout.minimumInteritemSpacing = 50
        flowLayout.minimumLineSpacing = 0
        
        self.collectionView.pagingEnabled = true
        self.collectionView.setCollectionViewLayout(flowLayout, animated: true)
        self.collectionView.collectionViewLayout.invalidateLayout()
        
        let currentOffset: CGPoint = self.collectionView.contentOffset
        self.currentIndexX = Int(currentOffset.x / self.collectionView.frame.size.width)
        self.currentIndexY = Int(currentOffset.y / self.collectionView.frame.size.height)
        
        let currentSize : CGSize = self.collectionView.bounds.size
        let offSetX : CGFloat = CGFloat(self.currentIndexX) * currentSize.width
        let offSetY : CGFloat = CGFloat(self.currentIndexY) * currentSize.height
        
        self.collectionView.setContentOffset(CGPointMake(offSetX, offSetY), animated: true)
        self.collectionView.layoutIfNeeded()
        
    }



    //MARK : - Collection View Delegate
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        let pageWidth : CGFloat  = self.collectionView.frame.size.width;
        self.pageControl.currentPage = Int(self.collectionView.contentOffset.x) / Int(pageWidth);
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(self.collectionView.frame.width, self.collectionView.frame.height)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        
        let reuseIdentifierPrefix = "promoPage"
        
        let cellOrigin: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifierPrefix + "\(indexPath.row + 1)", forIndexPath: indexPath) as! UICollectionViewCell
        return cellOrigin
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }



}
