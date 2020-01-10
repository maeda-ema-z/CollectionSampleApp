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
//            cell.lblSample.text = "Water"
            cell.buttonSample.setTitle("Water", for: .normal)
//            cell.buttonSample.setBackgroundImage(UIImage(named: "water"), for: .normal)
            cell.buttonSample.setImage(UIImage(named: "water"), for: .normal)
//            cell.buttonSample.backgroundColor = .red
        } else if indexPath.row == 1 {
//            cell.lblSample.text = "Drip"
            cell.buttonSample.setTitle("Drip", for: .normal)
            cell.buttonSample.setBackgroundImage(UIImage(named: "drip"), for: .normal)
        } else if indexPath.row == 2 {
//            cell.lblSample.text = "Treatment"
            cell.buttonSample.setTitle("Treatment", for: .normal)
            cell.buttonSample.setImage(UIImage(named: "treatment"), for: .normal)
        } else if indexPath.row == 3 {
//            cell.lblSample.text = "Toilet"
            cell.buttonSample.setTitle("Toilet", for: .normal)
            cell.buttonSample.setImage(UIImage(named: "toilet"), for: .normal)
        } else {
//            cell.lblSample.text = "???"
            cell.buttonSample.setTitle("???", for: .normal)
            cell.buttonSample.setImage(UIImage(named: "nurse"), for: .normal)
        }
//        cell.backgroundColor = .red
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    
}
