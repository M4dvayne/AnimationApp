//
//  DataManager.swift
//  AnimationApp
//
//  Created by Вячеслав Кремнев on 25.02.2022.
//


import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let presets: [Spring.AnimationPreset] = [
        .slideLeft,
        .slideRight,
        .slideDown,
        .slideUp,
        .squeezeLeft,
        .squeezeRight,
        .squeezeDown,
        .squeezeUp,
        .fadeIn,
        .fadeOut,
        .fadeOutIn,
        .fadeInLeft,
        .fadeInRight,
        .fadeInDown,
        .fadeInUp,
        .zoomIn,
        .zoomOut,
        .fall,
        .shake,
        .pop,
        .flipX,
        .flipY,
        .morph,
        .squeeze,
        .flash,
        .wobble,
        .swing
    ]
    
    let curves: [Spring.AnimationCurve] = [
        .spring,
        .linear,
        .easeIn,
        .easeOut,
        .easeInOut
    ]

    let force = [
        0.5,
        0.6,
        0.8
    ]

    let duration = [
        0.6,
        0.8,
        1
    ]
    
    let delay = 0.3
}
