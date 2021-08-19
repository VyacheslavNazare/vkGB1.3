//
//  GroupTableViewCell.swift
//  UI_app
//
//  Created by Вячеслав on 18.08.2021.
//

import UIKit

class GroupTableViewCell: UITableViewCell {
    
    static let identifier = "GroupTableViewCell"
    
    @IBOutlet private var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!
    
    
    func configure(imageName: String?, title: String) {
        imageCell.image = UIImage(named: "1")
        labelCell.text = title
    }
    
}
