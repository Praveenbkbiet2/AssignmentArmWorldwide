//
//  flixRowView.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/14/25.
//

import SwiftUI

struct flixRowView: View {
    
    let movies: [String]
    let rowWidth: CGFloat
    let rowHeight: CGFloat
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(movies, id: \.self) { movie in
                    Image(movie)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: rowWidth, height: rowHeight)
                        .clipShape(RoundedRectangle(cornerRadius: 1))
                }
            }.padding(.horizontal)
        }
    }
}

#Preview {
    MovieView()
}




