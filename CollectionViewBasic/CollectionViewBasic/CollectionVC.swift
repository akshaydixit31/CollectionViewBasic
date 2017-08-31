//
//  CollectionVC.swift
//  CollectionViewBasic
//
//  Created by Appinventiv Technologies on 30/08/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class CollectionVC: UIViewController {
//--------- CollectionView outlet ---------------------
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var centerImageView: UIImageView!
    //--------- Variable Declaration ----------------
//    let dataItem = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    let imageData = ["1","2","3","4","lenovo","micromax","moto","samsung","videocone","1","2","3","4","lenovo","micromax","moto","samsung","videocone","4","lenovo"]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
}
//============== Extension of CollectionVC for Collection view method ==============
extension CollectionVC: UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  imageData.count 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as? CollectionCell else{
            fatalError()
            }
        cell.collectionImage.image = UIImage(named:imageData[indexPath.row])
       
      return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        centerImageView.image = UIImage(named: imageData[indexPath.row])
    }
   
    
}
//============== Class for collection cell ============
class CollectionCell: UICollectionViewCell {
    @IBOutlet weak var collectionImage: UIImageView!
    
}

