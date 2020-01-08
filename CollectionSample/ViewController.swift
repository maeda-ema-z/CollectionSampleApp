//
//  ViewController.swift
//  CollectionSample
//
//  Created by user164140 on 1/8/20.
//  Copyright © 2020 user164140. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CustomCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CustomCell
        if indexPath.row == 0 {
            cell.lblSample.text = "Water"
            cell.imgSample.image = UIImage(named: "water.png")
        } else if indexPath.row == 1 {
            cell.lblSample.text = "Drip"
            cell.imgSample.image = UIImage(named: "drip.png")
        } else if indexPath.row == 2 {
            cell.lblSample.text = "Treatment"
            cell.imgSample.image = UIImage(named: "treatment.png")
        } else if indexPath.row == 3 {
            cell.lblSample.text = "Toilet"
            cell.imgSample.image = UIImage(named: "toilet.png")
        } else {
            cell.lblSample.text = "???"
            cell.imgSample.image = UIImage(named: "nurse.png")
        }
//        cell.backgroundColor = .red
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    
}
