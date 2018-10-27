//
//  ViewController.swift
//  monkeySee
//
//  Created by Shinan Liu on 10/27/18.
//  Copyright © 2018 Shinan Liu. All rights reserved.
//

import UIKit
import AVKit
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    let imageArray:[String] = ["pic"]
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = UIImage(named: imageArray[indexPath.row] + ".jpg" )
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageArray.count
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
}

