//
//  PlayerRating.swift
//  App.Aia
//
//  Created by Ainagul Doskazhanova on 15.11.2023.
//

import UIKit

class PlayerRating: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet var goldCup: UIImageView!
    @IBOutlet var imageLabel: UIImageView!
    @IBOutlet var loginLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
