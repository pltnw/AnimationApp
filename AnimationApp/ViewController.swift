//
//  ViewController.swift
//  AnimationApp
//
//  Created by Екатерина Платонова on 02.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var animatedObject: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        animatedObject.layer.cornerRadius = animatedObject.frame.height / 2
    }

}

