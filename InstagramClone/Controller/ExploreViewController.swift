//
//  ExploreViewController.swift
//  InstagramClone
//
//  Created by Robert Gordon on 12/4/17.
//  Copyright © 2017 Robert Gordon. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let images : [String] = ["1", "2", "3", "4", "5", "6", "7", "8","9","10","1", "2", "3", "4", "5", "6", "7", "8","9","10", "1", "2", "3", "4", "5", "6", "7", "8","9","10", "1", "2", "3", "4", "5", "6", "7", "8","9","10","1","2"]
    var itemSelected:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let flowLayout = UICollectionViewFlowLayout()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

