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
    
    override func viewWillLayoutSubviews() {
        springAnimationView.layer.cornerRadius = springAnimationView.frame.height / 2
    }

    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "pop"
        springAnimationView.curve = "easeOut"
        springAnimationView.force = 2
        springAnimationView.duration = 1.05
        springAnimationView.delay = 0.3
        
        sender.animation = "pop"
        sender.curve = "easeOut"
        sender.force = 0.3
        
        springAnimationView.animate()
        sender.animate()
        
        infoAnimationLabel.text = """
preset: \(springAnimationView.animation)
curve: \(springAnimationView.curve)
forse: \(springAnimationView.force)
duration: \(springAnimationView.duration)
delay: \(springAnimationView.delay)
"""
    }
}

