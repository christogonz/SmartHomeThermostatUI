//
//  ThermometerSummaryView.swift
//  SmartHouseThermostat
//
//  Created by Christopher Gonzalez on 2024-06-24.
//

import SwiftUI

struct ThermometerSummaryView: View {
    var status: Status
    var showStatus: Bool
    var temperature: CGFloat
    
    
    var body: some View {
        VStack(spacing: 0) {
            // MARK: Temperature Status
            Text(status.rawValue)
                .font(.headline)
                .foregroundStyle(.white)
                .opacity(showStatus ?  0.6 : 0)
                .animation(.easeIn(duration: 0.5), value: showStatus)
            
            // MARK: Temperature
                Text("\(temperature, specifier: "%.0f")")
                .font(.system(size: 54))
                .foregroundStyle(.white)
            
            // MARK: Eco Leaf
            Image(systemName: "leaf.fill")
                .font(.title2.bold())
                .foregroundStyle(.green)
        }
        .padding(.top, 40)
    }
}

#Preview {
    ThermometerSummaryView(status: .heating, showStatus: true, temperature: 22)
        .background(Color("Inner Dial 2"))
}
