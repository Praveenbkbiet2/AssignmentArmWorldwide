//
//  HomeView.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/12/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var deviceVM = DeviceViewModel()
    @StateObject private var PlanVM = PlanViewModel()
    @State private var isPressed = false
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    ZStack {
                        VStack{
                            Image("HomeImageContainer")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 500)
                                .frame(width: UIScreen.main.bounds.width)
                            
                        }
                        
                        VStack {
                            Text("tnc")
                                .font(.system(size: 30, weight: .bold, design: .default))
                                .padding()
                                .foregroundColor(.white)
                                .padding(.top,40)
                            
                            Spacer()
                            
                            Text("The Creative Network")
                                .font(.system(size: 30, weight: .bold, design: .default))
                                .foregroundColor(.white)
                        }
                    }
                    
                    VStack {
                        Text("The Creative India is the best streaming experience for watching your favorite movies and shows on demand, anytime, anywhere.")
                            .font(.system(size: 13, weight: .thin, design: .default))
                            .padding()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
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
                            Text("Explore Now")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.horizontal, 24)
                                .padding(.vertical, 14)
                                .background(Color(red: 253/255,green: 195/255,blue: 59/255,opacity: 1.0))
                                .cornerRadius(12)
                        }.scaleEffect(isPressed ? 0.95 : 1.0)
                        .buttonStyle(ScaleButtonStyle()) // 👈 Custom style
                    
                        
                        
                        
                        
                        VStack(alignment: .leading,spacing: 12) {
                            Text("Explore our wide variety of  categories")
                                .font(.system(size: 21, weight: .bold, design: .default))
                                .foregroundColor(.white)
                            
                            Text("Whether you're looking for a comedy to make you laugh, a drama to make you think, or a documentary to learn something new")
                                .font(.system(size: 14, weight: .thin, design: .default))
                                .foregroundColor(.white)
                        }.padding(.vertical)
                            .padding(.horizontal,15)
                        
                        HomeflixRowView(images:["Card-1","Card-2","Card-3","Card-4","Card-5","Card-6"], names: ["Filmmakers","Musicians","Artist","Podcasts","From India","From Greece"], rowWidth: 150)
                            .padding(8)
                        
                        VStack(alignment: .leading,spacing: 12) {
                            Text("We Provide you streaming experience across various devices.")
                                .font(.system(size: 21, weight: .bold, design: .default))
                                .foregroundColor(.white)
                            
                            Text("With The Creative India, you can enjoy your favorite movies and TV shows anytime, anywhere.")
                                .font(.system(size: 15, weight: .thin, design: .default))
                                .foregroundColor(.white)
                        }.padding(.vertical)
                            .padding(.horizontal,10)
                            .padding(.leading,5)
                    }.padding(.top,-25)
                }
                
                VStack(spacing: 16) {
                    ForEach(deviceVM.devices) { device in
                        DeviceCard(device: device)
                    }
                }
                
                
                VStack(alignment: .leading,spacing: 15) {
                    Text("Frequently Asked Questions")
                        .font(.system(size: 20, weight: .semibold, design: .default))
                        .foregroundColor(.white)
                    
                    Text("Got questions? We've got answers! Check out our FAQ section to find answers to the most common questions about The Creative India.")
                        .font(.system(size: 15, weight: .thin, design: .default))
                        .foregroundColor(.white)
                    
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
                        Text("Ask a Question")
                            .font(.system(size: 15, weight: .regular, design: .default))
                            .foregroundColor(.black)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 14)
                            .background(Color(red: 253/255,green: 195/255,blue: 59/255,opacity: 1.0))
                            .cornerRadius(8)
                    }.scaleEffect(isPressed ? 0.95 : 1.0)
                        .buttonStyle(ScaleButtonStyle()) // 👈 Custom style
                }.padding(.vertical,30)
                    .padding(.horizontal)
                
                ExpandableListView()
                
                VStack(alignment: .leading,spacing: 20) {
                    Text("Choose the plan that's right for you")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.top,25)
                    
                    Text("Join The Creative Network and select from our flexible subscription options tailored to suit your viewing preferences. Get ready for non-stop entertainment!")
                        .font(.system(size: 15, weight: .thin, design: .default))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                    VStack(spacing: 16) {
                        ForEach(PlanVM.devices) { plan in
                            PlanCard(plan: plan)
                        }
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
                                    isPressed = true
                                }
                                
                                // reset after thoda delay
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                    withAnimation {
                                        isPressed = false
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
                                .scaleEffect(isPressed ? 0.95 : 1.0)
                                .buttonStyle(ScaleButtonStyle()) // 👈 Custom style
                        }.padding(.horizontal)
                            .padding(.top,30)
                    }.padding(.top,30)
                }
            }
        } .background(Color(red: 20/255,green: 20/255,blue: 20/255,opacity: 1.0))
            .edgesIgnoringSafeArea(.top)
    }
}


#Preview {
    HomeView()
}




