//
//  UIVIEW.swift
//  Code
//
//  Created by Marzena Frąk on 28/03/2022.
//

import UIKit

extension UIView {

    /// The ratio (from 0.0 to 1.0, inclusive) of the view's corner radius
    /// to its width. For example, a 50% radius would be specified with
    /// `cornerRadiusRatio = 0.5`.
    @IBInspectable public var cornerRadiusRatio: CGFloat {
        get {
            return layer.cornerRadius / frame.width
        }

        set {
          
            let normalizedRatio = max(0.0, min(1.0, newValue))
            layer.cornerRadius = frame.width * normalizedRatio
        }
    }
}

