//
//  TweetCellTableViewCell.swift
//  Twitter
//
//  Created by Elwin Ready, Jr. on 3/6/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    
    
    @IBOutlet weak var retweetButton: UIButton!
    
    @IBOutlet weak var favButton: UIButton!
    
    @IBAction func favoriteTweet(_ sender: Any) {
    }
    
    @IBAction func retweet(_ sender: Any) {
        
        var favorited:Bool = false
        
        func setFavorite(_ isFavorited:Bool) {
            favorited = isFavorited
            if (favorited){
                favButton.setImage(UIImage(named:"favor-icon-red"), for: UIControl.State.normal)
            }
        }
            
        else do {
                favButton.setImage(UIImage(named:"favor-icon-"), for: UIControl.State.normal)
                
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
