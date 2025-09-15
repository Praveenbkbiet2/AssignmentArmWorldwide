//
//  ProfileView.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/12/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "xmark")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                    
                }.padding(.trailing,0)
                    .padding(.top,40)
            }
            
            HStack(spacing: 16) {
                Button(action: {}) {
                    Text("Sign Up")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(Color(red: 253/255,green: 195/255,blue: 59/255,opacity: 1.0))
                        .cornerRadius(5)
                }
                
                Button(action: {}) {
                    Text("Log In")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.yellow)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(red: 253/255,green: 195/255,blue: 59/255,opacity: 1.0), lineWidth: 1)
                        )
                }
            }
            .padding(.horizontal)
            .padding(.top,0)
            
            // MARK: - Menu Items
            VStack(spacing: 0) {
                VStack(spacing: 0) {
                    MenuItem(icon: "svgexport-7", title: "Name of the Profile") {
                        print("Profile tapped")
                    }
                    Divider().background(Color.gray.opacity(0.3))
                    
                    MenuItem(icon: "list_plus", title: "Watchlist / Favourites") {
                        print("Watchlist tapped")
                    }
                    Divider().background(Color.gray.opacity(0.3))
                    
                    MenuItem(icon: "message_writing", title: "Downloads") {
                        print("Downloads tapped")
                    }
                    Divider().background(Color.gray.opacity(0.3))
                    
                    MenuItem(icon: "message_writing 1", title: "Buy Subscription / Plan") {
                        print("Subscription tapped")
                    }
                    Divider().background(Color.gray.opacity(0.3))
                    
                    MenuItem(icon: "envelope", title: "Contact Us") {
                        print("Contact Us tapped")
                    }
                    Divider().background(Color.gray.opacity(0.3))
                    
                    MenuItem(icon: "Frame", title: "Logout", color:.red) {
                        print("Logout tapped")
                    }
                }
            }
            .padding(.horizontal)
            .background(Color(red: 26/255, green: 26/255, blue: 26/255))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
            )
            .padding(.horizontal)
            
            Spacer()
            
        }.background(Color(red: 20/255,green: 20/255,blue: 20/255,opacity: 1.0))
            .edgesIgnoringSafeArea(.top)
    }
}



#Preview {
    MenuView()
}


