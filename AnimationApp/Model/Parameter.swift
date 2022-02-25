//
//  Animation.swift
//  AnimationApp
//
//  Created by Вячеслав Кремнев on 24.02.2022.
//



struct Parameter {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
Preset: \(preset)
Curve: \(curve)
Force: \(String(force))
Duration: \(String(force))
Delay: \(String(force))
"""
    }
    
    static func getAnimation() -> Parameter{
        
        Parameter(
            preset: DataManager.shared.presets.randomElement()?.rawValue ?? "",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
            force: DataManager.shared.force.randomElement() ?? 0.2,
            duration: DataManager.shared.duration.randomElement() ?? 0.2,
            delay: DataManager.shared.delay
        )
    }
}

