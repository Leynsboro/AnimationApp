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
    
    var description: String {
        """
        Animation - \(animation)
        Curve - \(curve)
        Force - \(String(format: "%.02f", force))
        Duration - \(String(format: "%.02f", duration))
        Delay - \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(animation: DataManager.share.animations.randomElement()?.rawValue ?? "slideLeft",
                  curve: DataManager.share.curves.randomElement()?.rawValue ?? "easeIn",
                  force: Float.random(in: 1...2),
                  duration: Float.random(in: 1...2),
                  delay: 0.2)
    }
}
