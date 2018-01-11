//
//  CommonViewController.swift
//  Sport
//
//  Created by praveen on 1/11/18.
//  Copyright © 2018 praveen. All rights reserved.
//

import UIKit

class CommonViewController: UIViewController {
    var stringPassed:String!
    
    @IBOutlet weak var ibTabNameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ibTabNameLbl.text = stringPassed
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
