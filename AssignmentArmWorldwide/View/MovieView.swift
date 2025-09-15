//
//  SearchView.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/12/25.
//

import SwiftUI

struct MovieView: View {
    
    @State private var searchText = ""
     
    @State private var isPressed = false
    
    @State private var isPressed2 = false
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    ZStack {
                        VStack{
                            Image("MovieBGView")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 600)
                                .frame(width: UIScreen.main.bounds.width)
                                .clipped()
                        }
                        
                        VStack {
                            HStack {
                                CustomSearchBar(text: $searchText, placeHonderText: "Search your documentaries here ").padding(.leading,10)
                                
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .padding(.leading, -40)
                            }.padding(.horizontal,10)
                            
                            Spacer()
                            
                            VStack(spacing: 4) {
                                VStack(spacing: -15){
                                    Text("THE CREATIVE NETWORK ORIGINALS")
                                        .font(.system(size: 18, weight: .regular, design: .default))
                                        .foregroundColor(.white)
                                    
                                    Text("IRRFAN KHAN")
                                        .font(.system(size: 48, weight: .heavy, design: .default))
                                        .padding()
                                        .foregroundColor(.white)
                                }
                                
                                Button(action: {
                                    
                                    let generator = UIImpactFeedbackGenerator(style: .medium)
                                    generator.impactOccurred()
                                    withAnimation(.easeInOut(duration: 0.2)) {
                                        isPressed = true
                                    }
                                    
                                    // reset after thoda delay
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                        withAnimation {
                                            isPressed = false
                                        }
                                    }
                                    
                                    
                                }) {
                                    HStack {
                                        Image(systemName: "play.fill")
                                            .font(.title2)
                                            .foregroundColor(.black)
                                             
                                        Text("Play Now")
                                            .font(.headline)
                                            .foregroundColor(.black)
                                             
                                    }.padding(.vertical, 12)
                                        .padding(.horizontal,65)
                                        .background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.8))
                                        .cornerRadius(8)
                                }.scaleEffect(isPressed ? 0.95 : 1.0)
                                .buttonStyle(ScaleButtonStyle()) // 👈 Custom style
                                
                                
                                
                                
                   
                            
                                
                                
                                
                                Text("More Details")
                                    .padding(.top,27)
                                    .font(.system(size: 18, weight: .medium, design: .default))
                                    .foregroundColor(.white)
                                    .padding(.bottom,15)
                                
                            }.padding(.bottom,40)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 24) {
                        
                        Text("New Releases")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal)
                        
                        flixRowView(movies:["Card-1","Card-2","Card-3","Card-7","Card-5","Card-6"], rowWidth: 100, rowHeight: 170)
                        
                        Text("Documentaries")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal).padding(.top)
                        
                        flixRowView(movies: ["Card-7", "Card-27", "Card-8", "Card-31", "Card-10","Card-11"], rowWidth: 160, rowHeight: 200)
                        
                        Text("Trending Now")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal)
                            .padding(.top)
                        
                        flixRowView(movies: ["Card-12", "Card-13", "Card-20", "Card-15", "Card-16", "Card-17", "Card-18"], rowWidth: 100, rowHeight: 170)
                        
                        Text("Recommended")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal)
                            .padding(.top)
                        
                        flixRowView(movies: ["Card-25", "Card-20", "Card-21", "Card-22", "Card-23", "Card-33"], rowWidth: 90, rowHeight: 170)
                        
                        Text("Filmmakers")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal)
                            .padding(.top)
                        
                        flixRowView(movies: ["Card-25", "Card-26", "Card-27", "Card-28", "Card-3", "Card-30"], rowWidth: 100, rowHeight: 170)
                        
                        Text("Musicians")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal)
                            .padding(.top)
                        
                        flixRowView(movies: ["Card-31", "Card-32", "Card-33", "Card-6", "Card-35", "Card-1"], rowWidth: 100, rowHeight: 170)
                        
                        Text("Artist")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal)
                            .padding(.top)
                        
                        flixRowView(movies: ["Card-3", "Card-6", "Card-10", "Card-12", "Card-15", "Card-20"], rowWidth: 100, rowHeight: 170)
                        
                        Text("Podcasts")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal)
                            .padding(.top)
                        
                        flixRowView(movies: ["Card-6", "Card-7", "Card-3", "Card-31", "Card-30", "Card-21"], rowWidth: 100, rowHeight: 170)
                        
                        Text("From India")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal)
                            .padding(.top)
                        
                        flixRowView(movies: ["Card-12", "Card-16", "Card-15", "Card-18", "Card-20", "Card-22"], rowWidth: 100, rowHeight: 170)
                        
                        Text("From Greece")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .bold()
                            .padding(.horizontal)
                            .padding(.top)
                        
                        flixRowView(movies: ["Card-32", "Card-28", "Card-31", "Card-18", "Card-30", "Card-17"], rowWidth: 100, rowHeight: 170)
                        
                    }
                    
                    ZStack(alignment: .center) {
                        Image("LastBG")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 350)
                            .frame(maxWidth: .infinity)
                            .cornerRadius(20)
                            .clipped()
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                            .padding(.horizontal)
                        
                        VStack(spacing: 15) {
                            VStack (spacing: 5) {
                                Text("Start your free trial")
                                    .font(.system(size: 25, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                                
                                Text("today!")
                                    .font(.system(size: 25, weight: .bold, design: .default))
                                    .foregroundColor(.white)
                            }
                            
                            Text("This is a clear and concise call to action that encourages users to sign up for a free trial of The Creative Network.")
                                .font(.system(size: 15, weight: .thin, design: .default))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                            
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
                            }){
                                Text("Start a Free Trial")
                                    .font(.system(size: 16, weight: .regular))
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 28)
                                    .padding(.vertical, 20)
                                    .background(Color(red: 253/255,green: 195/255,blue: 59/255,opacity: 1.0))
                                    .cornerRadius(8)
                            }.padding(.top,40)
                                .scaleEffect(isPressed2 ? 0.95 : 1.0)
                                .buttonStyle(ScaleButtonStyle()) // 👈 Custom style

                            
                            
                            
                        }.padding(.horizontal)
                            .padding(.top,30)
                    }.padding(.top,30)
                }.background(Color(red: 20/255,green: 20/255,blue: 20/255,opacity: 1.0))
            }
        }.background(Color.black)
    }
}


#Preview {
    MovieView()
}








