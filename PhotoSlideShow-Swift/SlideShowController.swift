//
//  SlideShowController.swift
//  PhotoSlideShow-Swift
//
//  Created by VillyG on 4/21/15.
//  Copyright (c) 2015 VillyG. All rights reserved.
//

import UIKit


class SlideShowController: UIPageViewController, UIPageViewControllerDataSource {
    
    
    
    
    // ***********************************************
    // MARK: Custom variables
    // ***********************************************
    
    
    
    var images: [UIImage] = []
    
    var startIndex = 0

    
    
    // ***********************************************
    // MARK: UIView
    // ***********************************************
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        images.append(UIImage(named: "CuriousFrog.jpg")!)
        images.append(UIImage(named: "LeggyFrog.jpg")!)
        images.append(UIImage(named: "PeeringFrog.jpg")!)
        
        // Set the data source to itself
        self.dataSource = self
        
        // Create the first screen
        if let startingViewController = self.getItemController(startIndex) {
            
            setViewControllers([startingViewController], direction: .Forward, animated: false, completion: nil)
            
        }
        
    }
    
    
    
    
    // ***********************************************
    // MARK: UIPageViewController
    // ***********************************************
    
    
    
    private func getItemController(itemIndex: Int) -> UIViewController? {
        
        if itemIndex < self.images.count {
            
            let result:SlideController = self.storyboard!.instantiateViewControllerWithIdentifier("slideController") as! SlideController

            result.itemIndex = itemIndex

            result.image = self.images[itemIndex]
            
            return result
        }
        
        return nil
    }
    
    
    
    func pageViewController(pageViewController: UIPageViewController,
        viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
            
            let itemController = viewController as! SlideController
            
            if itemController.itemIndex+1 < self.images.count {
                return getItemController(itemController.itemIndex+1)
            }
            
            return nil
            
    }
    
    
    
    func pageViewController(pageViewController: UIPageViewController,
        viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
            
            
            let itemController = viewController as! SlideController
            
            if itemController.itemIndex > 0 {
                return getItemController(itemController.itemIndex-1)
            }
            
            return nil
            
    }
    
    
}

