//
//  CustomCell.swift
//  CollectionSample
//
//  Created by user164140 on 1/8/20.
//  Copyright © 2020 user164140. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UICollectionViewCell {
    @IBOutlet var imgSample: UIImageView!
    @IBOutlet var lblSample: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
}
