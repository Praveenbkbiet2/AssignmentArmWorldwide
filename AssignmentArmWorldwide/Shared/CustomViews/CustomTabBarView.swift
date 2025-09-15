//
//  Untitled.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/14/25.
//

import SwiftUI

struct CustomTabBarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(spacing: 0) {
            
            // MARK: - Content Transition
            Group {
                if selectedTab == 0 {
                    HomeView()
//                        .transition(.opacity.combined(with: .slide))
                } else if selectedTab == 1 {
                    MovieView()
//                        .transition(.opacity.combined(with: .slide))
                } else if selectedTab == 2 {
                    ArtistDirectoryView()
//                        .transition(.opacity.combined(with: .slide))
                } else {
                    MenuView()
//                        .transition(.opacity.combined(with: .slide))
                }
            }
            .animation(.easeInOut(duration: 0.3), value: selectedTab)
            
            // MARK: - Tab Bar
            HStack {
                tabButton(index: 0, image: "home", selectedImage: "home 1", title: "Home")
                Spacer()
                tabButton(index: 1, image: "video-camera", selectedImage: "video-camera 1", title: "Movies")
                Spacer()
                tabButton(index: 2, image: "users", selectedImage: "users 1", title: "Artist Directory")
                Spacer()
                tabButton(index: 3, image: "bars", selectedImage: "bars 1", title: "Menu")
            }
            .background(Color.black.opacity(0.9))
             
        }
    }
    
    // MARK: - Reusable Button
    private func tabButton(index: Int, image: String, selectedImage: String, title: String) -> some View {
        Button {
            withAnimation(.bouncy) {
                selectedTab = index
            }
        } label: {
            HStack(spacing: 3) {
                Image(selectedTab == index ? selectedImage : image)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .scaleEffect(selectedTab == index ? 1.2 : 1.0) // scaling animation
                    .animation(.spring(), value: selectedTab)
                
                if selectedTab == index {
                    Text(title)
                        .foregroundColor(.yellow)
                        .font(.system(size: 12, weight: .semibold))
                        .transition(.opacity)
                }
            }.padding(.vertical, 8)
                .padding(.horizontal,20)
        }
    }
}
