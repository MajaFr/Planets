//
//  StartView.swift
//  Code
//
//  Created by Marzena Frąk on 01/03/2022.
//

import UIKit

class StartView: UIView  {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControll: UIPageControl!
    @IBOutlet weak var exploreButton: UIButton!
    
    private var slides: [UIView] = []
    var firstSlide: FirstSlideView? = FirstSlideView.instanceFromNib() as? FirstSlideView
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        slides = [ firstSlide, SecondSlide.instanceFromNib(), ThirdSlide.instanceFromNib() ].compactMap { $0 }
    }
    override func draw(_ rect: CGRect) {
        pageControll.numberOfPages = slides.count
        setupUI()
        setupSlideScrollView(slides: slides, rect: rect)
        scrollView.bounces = false
    }
    
    func runScrollAnimation() {
        UIView.animate(withDuration: 0.5) {
            if self.scrollView.contentOffset.x < self.scrollView.frame.width * CGFloat(self.slides.count - 1) {
                self.scrollView.contentOffset.x +=  self.scrollView.frame.width
            } else {
                self.scrollView.contentOffset.x = 0
            }
        }
    }
    
    func setupUI() {
        exploreButton.layer.cornerRadius = 6
        }
    
    func setupSlideScrollView(slides: [UIView], rect: CGRect) {

        scrollView.contentSize = CGSize(width: rect.width * CGFloat(slides.count), height: rect.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(
                x: rect.width * CGFloat(i),
                y: 0,
                width: rect.width,
                height: rect.height
            )
            slides[i].contentMode = .scaleAspectFit
            scrollView.addSubview(slides[i])
        }
    }
}
