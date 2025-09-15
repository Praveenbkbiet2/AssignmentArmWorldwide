//
//  ExpandableListView.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/12/25.
//

import SwiftUI

struct ExpandableListView: View {
    
    @State private var expandedItems: Set<UUID> = []
    @StateObject private var viewModel = ExpandableListViewMode()
    
    var body: some View {
        VStack(spacing: 18) {
            ForEach(viewModel.items) { item in
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text(item.title)
                            .font(.system(size: 18, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image(systemName: expandedItems.contains(item.id) ? "minus" : "plus")
                            .foregroundColor(.white)
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        withAnimation {
                            toggle(item)
                        }
                    }
                    
                    if expandedItems.contains(item.id) {
                        Text(item.details)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .transition(.opacity.combined(with: .slide))
                    }
                }.padding(.vertical)
                    .background(Color(red: 20/255,green: 20/255,blue: 20/255,opacity: 1.0))
                    .cornerRadius(8)
                
                // Separator image between items (skip last item)
                if item.id != viewModel.items.last?.id {
                    Image("Line") // apni asset catalog me add karo
                        .resizable()
                        .scaledToFit()
                        .frame(height: 3)
                }
            }
        }.padding()
            .padding(.horizontal,10)
            .background(Color(red: 20/255,green: 20/255,blue: 20/255,opacity: 1.0))
    }
    
    private func toggle(_ item: Items) {
        if expandedItems.contains(item.id) {
            expandedItems.remove(item.id)
        } else {
            expandedItems.insert(item.id)
        }
    }
}


