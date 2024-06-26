//
//  ContentView.swift
//  SmartHouseThermostat
//
//  Created by Chris on 2024-06-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.background)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 0) {
                        // MARK: Thermometer
                        ThermotemerView()
                            .padding(.top, 30)
                            .padding(.bottom, 60)
                        
                        // MARK: Smart System
                        HStack(spacing: 20) {
                            // MARK: Humidity Card
                            ClimateCard(iconName: "humidity.fill", index: "Inside Humidity", measure: "49%")
                            
                            // MARK: Temperature Card
                            ClimateCard(iconName: "thermometer", index: "Outside Temp.", measure: "-10°")
                        }
                    }
                }
            }
            .navigationTitle("Thermostat")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
