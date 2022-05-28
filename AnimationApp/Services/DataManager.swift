//
//  DataManager.swift
//  AnimationApp
//
//  Created by Илья Гусаров on 27.05.2022.
//

import Spring

class DataManager {
    
    static let share = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
