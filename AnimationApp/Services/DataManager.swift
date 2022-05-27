//
//  DataManager.swift
//  AnimationApp
//
//  Created by Илья Гусаров on 27.05.2022.
//

import Foundation

class DataManager {
    
    static let share = DataManager.init()
    
    let animations = ["shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX", "flipY"]
    let curves = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]
}
