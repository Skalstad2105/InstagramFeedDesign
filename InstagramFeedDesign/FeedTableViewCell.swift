//
//  FeedTableViewCell.swift
//  InstagramFeedDesign
//
//  Created by Marius Skalstad on 05.05.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var voteLabel: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var profileImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = 15
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
