//
//  ViewController.swift
//  AnimationApp
//
//  Created by Вячеслав Кремнев on 2/23/22.
//

import UIKit
import Spring

class AnimationViewController: UIViewController {

    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var springButtonName: SpringButton!
    
    private var animation = Parameter.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
        springButtonName.titleLabel?.text = animation.preset.description
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        animationLabel.text = animation.description
        
        springAnimationView.animation = animation.preset
        springAnimationView.force = animation.force
        springAnimationView.delay = animation.delay
        springAnimationView.curve = animation.curve
        springAnimationView.duration = animation.duration
        springAnimationView.animate()
        
        animation = Parameter.getAnimation()
        
        springButtonName.setTitle("\(animation.description)", for: .normal)
        
    }
}

