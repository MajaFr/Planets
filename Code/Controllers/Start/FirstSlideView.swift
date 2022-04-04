//
//  FirstSlideView.swift
//  Code
//
//  Created by Marzena Frąk on 01/03/2022.
//

import UIKit

class FirstSlideView: UIView {

    class func instanceFromNib() -> UIView {
        return UINib(nibName: "FirstSlide", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}

