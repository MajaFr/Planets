//
//  StartViewController.swift
//  Code
//
//  Created by Marzena Frąk on 01/03/2022.
//

import UIKit

class StartViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var startView: StartView!
    @IBOutlet weak var activityIndicatorViewContainer: UIView!
    var timer: Timer?
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicatorViewContainer.alpha = 1
        startView.scrollView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        activityIndicatorViewContainer.isHidden = false
    }
                   
    @IBAction func didExploreButtonTap(_ sender: UIButton) {
        presentFullScreen(viewController: SolarSystemViewController())
    }
    
    func setTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { [weak self] _ in
            guard let self = self else { return }
            
            self.startView.runScrollAnimation()
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x / view.frame.width)
        startView.pageControll.currentPage = Int(pageIndex)
        setTimer()
    }
}
