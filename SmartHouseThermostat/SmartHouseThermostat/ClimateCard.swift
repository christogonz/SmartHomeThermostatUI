//
//  ClimateCard.swift
//  SmartHouseThermostat
//
//  Created by Chris on 2024-06-07.
//

import SwiftUI

struct ClimateCard: View {
    var iconName: String
    var index: String
    var measure:  String
    
    
    var body: some View {
        ZStack {
            // MARK: Card
            RoundedRectangle(cornerRadius: 22, style: .continuous)
                .fill(Color("Card Background"))
                .shadow(color: Color("Card Shadow"), radius: 40, x: 0, y: 20)
                .overlay{
                    // MARK: Card Border
                    RoundedRectangle(cornerRadius: 22, style: .continuous)
                        .stroke(.white.opacity(0.1), lineWidth: 1)
                }
            
            VStack(spacing: 10) {
                // MARK: Circle Icon
                    Image(systemName: iconName)
                        .foregroundStyle(.white)
                        .font(.title2.weight(.semibold))
                        .frame(width: 60, height: 60)
                        .background(LinearGradient([Color("Temperature Ring 1"), Color("Temperature Ring 2")], startPoint: .top, endPoint: .bottom))
                        .clipShape(Circle())
                
                VStack(spacing: 8) {
                    // MARK: Index
                    Text(index)
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    // MARK: Measure
                    Text(measure)
                        .font(.title3.weight(.semibold))
                        .foregroundStyle(.white).opacity(0.6)
                    
                }
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 10)
            
                
                
        }
        .frame(width: 144, height: 164)
    }
}

#Preview {
    ClimateCard(iconName: "humidity.fill", index: "Inside Humidity", measure: "50%")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
}
