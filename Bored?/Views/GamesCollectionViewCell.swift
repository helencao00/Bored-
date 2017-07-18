//
//  GamesCollectionViewCell.swift
//  Bored?
//
//  Created by Helen Cao on 7/17/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit
import PinterestSDK
class GamesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var gameImageView: UIImageView!
    @IBOutlet weak var gameNameTextField: UITextField!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    let pin = PDKPin()
    func getPinPicture(){
        let pinImage = pin.url.absoluteURL
        gameImageView.setImageWith(pinImage)
    }

}
//
//extension GamesCollectionViewCell: UICollectionViewDataSource{
//    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
//        return 3
//        
//    }
//    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sampleGame", for: indexPath)
//        return cell
//    }
//}
//
//extension GamesCollectionViewCell: UICollectionViewDelegate{
//    

