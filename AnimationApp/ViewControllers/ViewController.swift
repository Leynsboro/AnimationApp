//
//  ViewController.swift
//  AnimationApp
//
//  Created by Илья Гусаров on 27.05.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = animation.description
    }

    @IBAction func buttonTapped(_ sender: SpringButton) {
        descriptionLabel.text = animation.description
        
        animatedView.animation = animation.animation
        animatedView.curve = animation.curve
        animatedView.duration = CGFloat(animation.duration)
        animatedView.delay = CGFloat(animation.delay)
        animatedView.force = CGFloat(animation.force)
        
        animatedView.animate()
        
        animation = Animation.getAnimation()
        
        sender.setTitle("Run \(animation.animation)", for: .normal)
    }
    
}

