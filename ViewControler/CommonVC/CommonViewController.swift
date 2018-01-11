//
//  CommonViewController.swift
//  Sport
//
//  Created by praveen on 1/11/18.
//  Copyright © 2018 praveen. All rights reserved.
//

import UIKit

class CommonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate,UICollectionViewDataSource{
    var stringPassed:String!
    var imageArray: [UIImage] = [
        UIImage(named: "1.png")!,
        UIImage(named: "2.png")!,
        UIImage(named: "3.png")!,
        UIImage(named: "4.png")!,
        UIImage(named: "1.png")!,
        UIImage(named: "2.png")!,
        UIImage(named: "3.png")!,
        UIImage(named: "4.png")!
    ]
    @IBOutlet weak var ibtechTableview: UITableView!
    @IBOutlet weak var ibTabNameLbl: UILabel!
    @IBOutlet weak var ibCollecationView:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ibTabNameLbl.text = stringPassed
        ibtechTableview.isHidden = true
        ibCollecationView.isHidden = true
        
        if stringPassed == "Technologies" {
            ibtechTableview.isHidden = false
        }else if stringPassed == "Design"{
            ibCollecationView.isHidden = false
        }
 
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath ) as! TechologiesCell
            cell.selectionStyle = .none
            cell.ibTitleImage.image = imageArray[indexPath.row]
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DesingCell
        cell.ibImage.image = imageArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
