//
//  Untitled.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/14/25.
//

import SwiftUI

struct CustomSearchBar: View {
    @Binding var text: String
    let placeHonderText: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            // Placeholder 
            if text.isEmpty {
                Text(placeHonderText)
                    .font(.system(size: 16, weight: .light, design: .default))
                    .foregroundColor(.gray)
                    .padding(.leading, 12)
            }
            
            // TextField
            TextField("", text: $text)
                .padding(12)
                .foregroundColor(.white)
        }
        .background(
            Color(red: 20/255,
                  green: 20/255,
                  blue: 20/255,
                  opacity: 1.0)
        )
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}

#Preview {
    MovieView()
}
