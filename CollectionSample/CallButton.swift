//
//  CallButton.swift
//  CollectionSample
//
//  Created by user164140 on 1/10/20.
//  Copyright © 2020 user164140. All rights reserved.
//

import UIKit

class CallButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.lightGray
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
}
