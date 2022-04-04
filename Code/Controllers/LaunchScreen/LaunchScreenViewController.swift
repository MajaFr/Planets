//
//  LaunchScreenViewController.swift
//  Code
//
//  Created by Marzena Frąk on 07/03/2022.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate (withDuration: 1) { }
            
            let viewController = StartViewController()
            viewController.modalPresentationStyle = .fullScreen
            self.present(viewController, animated: true)
    }
}

