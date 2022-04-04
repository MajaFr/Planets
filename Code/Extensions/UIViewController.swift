//
//  UIViewController.swift
//  Code
//
//  Created by Marzena Frąk on 16/03/2022.
//

import UIKit

extension UIViewController {
    
    func presentFullScreen(viewController: UIViewController) {
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
    }
}
