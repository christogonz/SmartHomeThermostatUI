//
//  Extensions.swift
//  SmartHouseThermostat
//
//  Created by Chris on 2024-06-07.
//


import SwiftUI

// Permite crear gradiantes lineares mas facil
extension LinearGradient {
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomTrailing) {
        self.init(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
}


