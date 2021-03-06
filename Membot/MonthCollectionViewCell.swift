//
//  MonthCollectionViewCell.swift
//  Membot
//
//  Created by Alex Andrews on 3/1/16.
//  Copyright © 2016 Sneakywolf. All rights reserved.
//

import UIKit
import Haneke

class MonthCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var monthCellImageView: UIImageView!

    func configureForItem(memorable: Any) {
        let targetWidth = UIScreen.mainScreen().bounds.width / 5
        let targetSize = CGSize(width: targetWidth, height: targetWidth)
        if let mem = memorable as? Memorable {
            if let url = mem.metadata as? NSURL {
                monthCellImageView.hnk_setImageFromURL(url)
            } else {
                mem.adapter.retrieveDisplayableData(mem.metadata, dimensions: self.sizeThatFits(targetSize), completion: { (image) -> Void in
                    self.monthCellImageView.image = image as? UIImage
                })
            }
        }
    }
}