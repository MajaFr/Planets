//
//  SecondSlideView.swift
//  Code
//
//  Created by Marzena Frąk on 01/03/2022.
//

import UIKit

class SecondSlide: UIView {
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SecondSlide", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}

