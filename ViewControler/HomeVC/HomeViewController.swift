//
//  HomeViewController.swift
//  Sport
//
//  Created by praveen on 1/11/18.
//  Copyright © 2018 praveen. All rights reserved.
//

import UIKit
import CarbonKit

class HomeViewController: UIViewController,CarbonTabSwipeNavigationDelegate {
    var objCArray:NSMutableArray = []
//
    override func viewDidLoad() {
        super.viewDidLoad()
        let items:[String] = ["Technologies","Design","Politics","Movies","Features", "Products", "About"]
         objCArray = NSMutableArray(array: items)
        let carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: items, delegate: self)
        carbonTabSwipeNavigation.insert(intoRootViewController: self)
    }
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "CommonViewController") as! CommonViewController
        myVC.stringPassed = objCArray.object(at: Int(index)) as? String
        return myVC
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
