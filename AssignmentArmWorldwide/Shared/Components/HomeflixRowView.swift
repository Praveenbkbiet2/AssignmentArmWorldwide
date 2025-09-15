//
//  HomeflixRowView.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/14/25.
//

import SwiftUI

struct HomeflixRowView: View {
    
    let images: [String]
    let names: [String]
    let rowWidth: CGFloat
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(Array(images.enumerated()), id: \.offset) { index, image in
                    VStack{
                        ZStack(alignment: .bottom) {
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: rowWidth, height: 170)
                                .clipShape(RoundedRectangle(cornerRadius: 0))
                                .overlay(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.black.opacity(1), Color.clear]),
                                        startPoint: .bottom,
                                        endPoint: .top
                                    )
                                )
                                .padding()
                            
                            HStack(spacing: 5) {
                                Text(names[index])
                                    .font(.system(size: 14, weight: .semibold))
                                    .foregroundColor(.white)
                                Spacer()
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .frame(width: 13, height: 13)
                                    .foregroundColor(.white)
                            }.padding(22)
                        }
                    }.background(Color(red: 26/255,green: 26/255,blue: 26/255,opacity: 1.0))
                }
            }.overlay(
                RoundedRectangle(cornerRadius: 0)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1))
            .padding(.horizontal,10)
        }
    }
}

