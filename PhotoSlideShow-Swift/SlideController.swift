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
        print(#function)
        
        let scrollView: ImageScrollView = ImageScrollView()
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.backgroundColor = UIColor.black
        self.view = scrollView
        scrollView.displayImage(image)
    }
    
    
}
