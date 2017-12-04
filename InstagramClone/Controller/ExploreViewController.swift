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
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var images : [String] = ["1", "2", "3", "4", "5", "6", "7", "8","9","10","1", "2", "3", "4", "5", "6", "7", "8","9","10", "1", "2", "3", "4", "5", "6", "7", "8","9","10", "1", "2", "3", "4", "5", "6", "7", "8","9","10","1","2"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let flowLayout = UICollectionViewFlowLayout()
        let itemSize = UIScreen.main.bounds.width/3 - 3
        flowLayout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        flowLayout.itemSize = CGSize(width: itemSize, height: itemSize)
        flowLayout.minimumInteritemSpacing = 3
        flowLayout.minimumLineSpacing = 3
        collectionView.collectionViewLayout = flowLayout
        
        let refreshControl = UIRefreshControl()
        
        if #available(iOS 10.0, *) {
            collectionView.refreshControl = refreshControl
        } else {
            collectionView.addSubview(refreshControl)
        }
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.y
        if offset < -100 {
            collectionView.refreshControl?.tintColor = UIColor.orange
            collectionView.refreshControl?.attributedTitle = NSAttributedString(string: "You can let go now", attributes: [.foregroundColor : UIColor.orange])
            collectionView.refreshControl?.backgroundColor = UIColor.darkGray
            loadMoreData()
        } else {
            collectionView.refreshControl?.tintColor = UIColor.orange
            collectionView.refreshControl?.attributedTitle = NSAttributedString(string: "Pull down to reload...", attributes: [.foregroundColor : UIColor.orange])
            collectionView.refreshControl?.backgroundColor = UIColor.darkGray
        }
    }
    
    @objc func loadMoreData(){
        collectionView.refreshControl?.endRefreshing()
        for i in 3...6 {
            images.append("\(i)")
        }
        collectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UICollectionViewDelegate Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCell", for: indexPath) as! ExploreCollectionViewCell
        if let image = UIImage(named:images[indexPath.row]) {
            cell.imageView.image = image
        }
        return cell
    }


}

