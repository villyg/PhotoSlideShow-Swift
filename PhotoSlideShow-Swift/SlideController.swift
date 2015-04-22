//
//  SlideController.swift
//  PhotoSlideShow-Swift
//
//  Created by VillyG on 4/21/15.
//  Copyright (c) 2015 VillyG. All rights reserved.
//

import UIKit


class SlideController: UIViewController {
    
    
    var itemIndex: Int = -1
    
    var image: UIImage!
    
    
    
    // ***********************************************
    // MARK: UIView
    // ***********************************************
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println(__FUNCTION__)
        
        var scrollView: ImageScrollView = ImageScrollView()
        scrollView.autoresizingMask = .FlexibleWidth | .FlexibleHeight
        scrollView.backgroundColor = UIColor.blackColor()
        self.view = scrollView
        scrollView.displayImage(image)
    }
    
    
}
