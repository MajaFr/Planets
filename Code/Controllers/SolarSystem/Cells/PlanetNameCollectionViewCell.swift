//
//  PlanetNameCollectionViewCell.swift
//  Code
//
//  Created by Marzena Frąk on 10/03/2022.
//

import UIKit

class PlanetNameCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var planetNameLabel: UILabel!
    
    @IBOutlet weak var dotView: UIView!

    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        planetNameLabel.textColor = UIColor.white
        
        let side = dotView.frame.width
        dotView.layer.cornerRadius = side / 2
        dotView.clipsToBounds = true
    }
    
    func hideDotSeparator() {
        dotView.isHidden = true
    }

}
