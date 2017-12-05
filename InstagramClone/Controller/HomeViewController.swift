//
//  HomeViewController.swift
//  InstagramClone
//
//  Created by Robert Gordon on 12/4/17.
//  Copyright © 2017 Robert Gordon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cardNib = UINib(nibName: "HomeCollectionViewCell", bundle: nil)
        collectionView.register(cardNib, forCellWithReuseIdentifier: "homeCardCell")
        
        let flowLayout = UICollectionViewFlowLayout()
        let cardWidth = UIScreen.main.bounds.width
        let cardHeight = UIScreen.main.bounds.height*0.6
        flowLayout.itemSize = CGSize(width: cardWidth, height: cardHeight)
        flowLayout.minimumLineSpacing = 10
        collectionView.collectionViewLayout = flowLayout
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UICollectionViewDelegate Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCardCell", for: indexPath) as! HomeCollectionViewCell
        cell.postedImageView.image = UIImage(named:"1")
        cell.usernameLabel.text = "robwayne"
        cell.userProfilePictureView.image = UIImage(named: "2")
        
        return cell
    }


}

