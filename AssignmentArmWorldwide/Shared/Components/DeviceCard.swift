//
//  DeviceCard.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/14/25.
//

import SwiftUI

struct DeviceCard: View {
    
    let device: DeviceInfo
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 10) {
                Image(device.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Text(device.title)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.white)
                
                Spacer()
            }.padding()
            
            Text(device.description)
                .padding(.horizontal)
                .font(.system(size: 15, weight: .thin, design: .default))
                .foregroundColor(.white)
                .padding(.bottom, 15)
        }
        .frame(maxWidth: .infinity)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 15/255, green: 15/255, blue: 15/255, opacity: 1),  // #0F0F0F
                    Color(red: 253/255, green: 195/255, blue: 59/255, opacity: 0.12) // #FDC33B
                ]),
                startPoint: .bottomLeading,
                endPoint: .topTrailing
            )
        )
        .cornerRadius(2)
        .overlay(
            RoundedRectangle(cornerRadius: 2)
                .stroke(Color.gray.opacity(0.3), lineWidth: 1))
        .padding(.horizontal,15)
    }
}


#Preview {
    ContentView()
}
