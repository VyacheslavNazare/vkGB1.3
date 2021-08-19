//
//  GalleryViewController.swift
//  UI_app
//
//  Created by Вячеслав on 16.08.2021.
//

import UIKit

final class GalleryViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var gallery: [GalleryModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
}

extension GalleryViewController: UICollectionViewDelegate {
    
}

extension GalleryViewController: UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        gallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GalleryViewCell.identifier, for: indexPath) as! GalleryViewCell
        let gallerys = gallery[indexPath.item]
        cell.configure(gallerys)
        
        return cell
    }
    
    
}
