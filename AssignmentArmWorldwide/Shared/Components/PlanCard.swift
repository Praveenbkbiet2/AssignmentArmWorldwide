//
//  PlanCard.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/12/25.
//

import SwiftUI

struct PlanCard: View {
    
    let plan: PlanInfo
    @State private var isPressed1 = false
    @State private var isPressed2 = false
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading,spacing: 20) {
                Text(plan.title)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.top,25)
                
                Text(plan.description)
                    .font(.system(size: 15, weight: .thin, design: .default))
                    .foregroundColor(.white)
                
                HStack(alignment: .bottom, spacing: 2) {
                    Text(plan.price)
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(.white)
                    
                    Text("/year")
                        .font(.system(size: 15, weight: .thin, design: .default))
                        .foregroundColor(.white)
                        .padding(.bottom,5)
                }
            }.padding(.horizontal)
            
            HStack(spacing: 10) {
                Button(action: {
                    let generator = UIImpactFeedbackGenerator(style: .medium)
                    generator.impactOccurred()
                    withAnimation(.easeInOut(duration: 0.2)) {
                        isPressed1 = true
                    }
                    
                    // reset after thoda delay
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        withAnimation {
                            isPressed1 = false
                        }
                    }
                }) {
                    Text("Start Free Trial")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 16)
                        .background(Color.black)
                        .cornerRadius(8)
                }.overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1))
                .scaleEffect(isPressed1 ? 0.95 : 1.0)
                    .buttonStyle(ScaleButtonStyle()) // 👈 Custom style
                
                Spacer()
                
                Button(action: {
                    
                    let generator = UIImpactFeedbackGenerator(style: .medium)
                    generator.impactOccurred()
                    withAnimation(.easeInOut(duration: 0.2)) {
                        isPressed2 = true
                    }
                    
                    // reset after thoda delay
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        withAnimation {
                            isPressed2 = false
                        }
                    }
                    
                }) {
                    Text("Choose Plan")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.black)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 16)
                        .background(Color(red: 253/255,green: 195/255,blue: 59/255,opacity: 1.0))
                        .cornerRadius(8)
                }.scaleEffect(isPressed2 ? 0.95 : 1.0)
                    .buttonStyle(ScaleButtonStyle()) // 👈 Custom style
            }.padding()
        }
        
        .background(Color(red: 26/255, green: 26/255, blue: 26/255))
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .padding(.horizontal)
        
    }
}


#Preview {
    HomeView()
}
