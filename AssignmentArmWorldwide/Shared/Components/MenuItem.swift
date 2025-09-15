//
//  MenuItem.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/14/25.
//

import SwiftUI

struct MenuItem: View {
    var icon: String
    var title: String
    var color: Color = .white
    var action: (() -> Void)? = nil
    
    var body: some View {
        Button(action: {
            action?()
        }) {
            HStack(spacing:10) {
                Image(icon)
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(color)
                    .frame(width: 24, height: 24)
                
                Text(title)
                    .foregroundColor(color)
                    .font(.system(size: 16))
                
                Spacer()
            }.padding(.vertical, 15)
        }.buttonStyle(CustomMenuButtonStyle())
    }
}

#Preview {
    MenuView()
}


