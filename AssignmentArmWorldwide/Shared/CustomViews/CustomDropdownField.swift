//
//  CustomDropdownField.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/14/25.
//

import SwiftUI

struct CustomDropdownField: View {
    var title: String
    @Binding var selection: String?
    var options: [String]
    @State private var isExpanded = false
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                ZStack {
                    Text(selection ?? title)
                        .foregroundColor(selection == nil ? .white.opacity(0.7) : .white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .id(selection)
                        .transition(
                            AnyTransition
                                .asymmetric(
                                    insertion: .move(edge: .leading).combined(with: .opacity),
                                    removal: .move(edge: .trailing).combined(with: .opacity)
                                )
                        )
                        .animation(.spring(response: 0.6, dampingFraction: 0.5, blendDuration: 0), value: selection)
                }
                
                Spacer()
                
                Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(isExpanded ? 180 : 0))
                    .animation(.spring(response: 0.5, dampingFraction: 0.6), value: isExpanded)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black.opacity(0.6))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.white.opacity(0.9), lineWidth: 1)
            )
            .cornerRadius(8)
            .padding(.leading,120)
            .onTapGesture {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.5)) {
                    isExpanded.toggle()
                }
            }
            
            // MARK: - Dropdown Options
            if isExpanded {
                VStack(spacing: 0) {
                    ForEach(options, id: \.self) { option in
                        Button(action: {
                            withAnimation(.spring(response: 0.6, dampingFraction: 0.6)) {
                                selection = option
                                isExpanded = false
                            }
                        }) {
                            Text(option)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.black.opacity(0.8))
                        }
                        Divider().background(Color.white.opacity(0.3))
                    }
                }
                .cornerRadius(8)
                .padding(.horizontal)
                // 👇 Dropdown open animation: scale + fade + slide from top
                .transition(
                    AnyTransition
                        .asymmetric(
                            insertion: .move(edge: .trailing).combined(with: .opacity).combined(with: .scale),
                            removal: .move(edge: .trailing).combined(with: .opacity).combined(with: .scale)
                        )
                )
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0), value: isExpanded)
            }
        }
    }
}
