//
//  ViewController.swift
//  AnimationApp
//
//  Created by Илья Гусаров on 27.05.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var labelCollection: [UILabel]!
        
    let presets = Animation.getPresets()
    var nextAnimation: String!
    var started = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let animation = presets.randomElement()?.animation else { return }
        nextAnimation = animation
        
        for label in labelCollection {
            label.isHidden = true
        }
    }

    @IBAction func buttonTapped(_ sender: SpringButton) {
        
        if !started {
            started.toggle()
            for label in labelCollection {
                label.isHidden.toggle()
            }
        }
        
        guard let curve = presets.randomElement()?.curve else { return }
        guard let duration = presets.randomElement()?.duration else { return }
        guard let delay = presets.randomElement()?.delay else { return }
        guard let force = presets.randomElement()?.force else { return }
        
        labelCollection[0].text = "Animation - \(nextAnimation!)"
        labelCollection[1].text = "Curve - \(curve)"
        labelCollection[2].text = "Duration - \(duration)"
        labelCollection[3].text = "Delay - \(delay)"
        labelCollection[4].text = "Force - \(force)"
        
        animatedView.animation = nextAnimation
        animatedView.curve = curve
        animatedView.duration = CGFloat(duration)
        animatedView.delay = CGFloat(delay)
        animatedView.force = CGFloat(force)
        
        guard let animation = presets.randomElement()?.animation else { return }
        nextAnimation = animation
        
        animatedView.animate()
        
        sender.setTitle("Run " + nextAnimation, for: .normal)
    }
    
}

