//
//  ThirdSlideView.swift
//  Code
//
//  Created by Marzena Frąk on 01/03/2022.
//

import UIKit

class ThirdSlide: UIView {
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "ThirdSlide", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}
