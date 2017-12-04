//
//  HomeCollectionViewCell.swift
//  InstagramClone
//
//  Created by Robert Gordon on 12/4/17.
//  Copyright © 2017 Robert Gordon. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var userProfilePictureView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var postedImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userProfilePictureView.layer.cornerRadius = userProfilePictureView.frame.width/2
    }

    @IBAction func didTapSettings(_ sender: UIButton) {
    }
}
