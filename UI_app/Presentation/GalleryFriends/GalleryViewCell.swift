//
//  GalleryViewCell.swift
//  UI_app
//
//  Created by Вячеслав on 16.08.2021.
//

import UIKit

final class GalleryViewCell: UICollectionViewCell {
    
    @IBOutlet weak var GalleryImageView: UIImageView!
    
    static let identifier: String = "GalleryViewCell"
    func configure(_ gallery: GalleryModel) {
        GalleryImageView.image = UIImage(named: gallery.imageGalley)
    }
    
}
