//
//  ViewController.swift
//  AnimationApp
//
//  Created by Екатерина Платонова on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var infoAnimationLabel: UILabel!
    @IBOutlet var springAnimationButton: SpringButton!
    
    override func viewWillLayoutSubviews() {
        springAnimationView.layer.cornerRadius = 15
    }

    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        setAnimationForButton()
        setAnimationForView()
        setInfoLabel()
    }
    
    private func setAnimationForButton() {
        springAnimationButton.animation = "pop"
        springAnimationButton.curve = "easeOut"
        springAnimationButton.force = 0.3
        
        springAnimationButton.animate()
    }
    
    private func setAnimationForView() {
        springAnimationView.animation = DataStore.shared.animationPreset.randomElement() ?? ""
        springAnimationView.curve = DataStore.shared.animationCurve.randomElement() ?? ""
        springAnimationView.force = CGFloat.random(in: 1...5)
        springAnimationView.duration = CGFloat.random(in: 0.5...1.5)
        springAnimationView.delay = CGFloat.random(in: 0.2...0.7)
        
        springAnimationView.animate()
    }
    
    private func setInfoLabel() {
        infoAnimationLabel.text = (String(format: """
        preset: \(springAnimationView.animation)
        curve: \(springAnimationView.curve)
        forse: %.2f
        duration: %.2f
        delay: %.2f
        """, springAnimationView.force, springAnimationView.duration, springAnimationView.delay))
    }
    
}


