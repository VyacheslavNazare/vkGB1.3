//
//  ImageViewCell.swift
//  UI_app
//
//  Created by Вячеслав on 16.08.2021.
//

import UIKit

class AllFriendViewCell: UITableViewCell {
    
    @IBOutlet weak var FriendImageView: UIImageView!
    @IBOutlet weak var FriendNameLlabel: UILabel!
    static let identifier = "AllFriendViewCell"
    
    func configure(friend: FriendModel) {
        FriendImageView.image = UIImage(named: friend.avatarName)
        FriendNameLlabel.text = friend.name
    }
}
