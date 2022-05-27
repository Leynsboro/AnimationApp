//
//  Animation.swift
//  AnimationApp
//
//  Created by Илья Гусаров on 27.05.2022.
//

import Foundation

struct Animation {
    let animation: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    static func getPresets() -> [Animation] {
        var animation: [Animation] = []
        
        let dataManager = DataManager.share
        let animations = dataManager.animations
        let curves = dataManager.curves
        
        for _ in 0...20 {
            animation.append(Animation(animation: animations.randomElement() ?? "shake",
                      curve: curves.randomElement() ?? "spring",
                      force: Float.random(in: 0.3...1),
                      duration: Float.random(in: 0.5...2),
                      delay: Float.random(in: 0...0.4)
            ))
        }
        
        return animation
    }
}
