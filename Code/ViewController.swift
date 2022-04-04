//
//  ViewController.swift
//  Code
//
//  Created by Marzena Frąk on 01/03/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewController = StartViewController()
        present(viewController, animated: true)
        
    }
}

