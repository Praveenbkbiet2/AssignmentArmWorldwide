//
//  CartView.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/12/25.
//

import SwiftUI

struct ArtistDirectoryView: View {
    
    @State private var searchText = ""
    @State private var selectedCountry: String? = nil
    @State private var selectedState: String? = nil
    @State private var selectedCity: String? = nil
    @State private var selectedIndustry: String? = nil
    @State private var selectedCategory: String? = nil
    @State private var selectedOrganisation: String? = nil
    @State private var isPressed = false
    
    var body: some View {
        ZStack {
            Image("ImageBG")
                .resizable()
            
            ScrollView {
                VStack(spacing: 16) {
                    HStack {
                        CustomSearchBar(text: $searchText, placeHonderText: "Search your artist here")
                            .padding(.horizontal,-10)
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, -40)
                    }
                    
                    // MARK: - Multiple Dropdowns
                    
                    CustomDropdownField(
                        title: "Select Country",
                        selection: $selectedCountry,
                        options: ["India", "USA", "UK", "Germany", "Japan"]
                    )
                    
                    CustomDropdownField(
                        title: "Select State",
                        selection: $selectedState,
                        options: ["State 1", "State 2", "State 3"]
                    )
                    
                    CustomDropdownField(
                        title: "Select City",
                        selection: $selectedCity,
                        options: ["City A", "City B", "City C"]
                    )
                    
                    CustomDropdownField(
                        title: "Select Industry",
                        selection: $selectedIndustry,
                        options: ["IT", "Healthcare", "Education", "Finance"]
                    )
                    
                    CustomDropdownField(
                        title: "Select Category",
                        selection: $selectedCategory,
                        options: ["Category 1", "Category 2", "Category 3"]
                    )
                    
                    CustomDropdownField(
                        title: "Select Organisation",
                        selection: $selectedOrganisation,
                        options: ["Org A", "Org B", "Org C"]
                    )
                    
                    // MARK: - Search Button
                    Button(action: {
                        print("Search tapped")
                        
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
                        Text("Search")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.white.opacity(0.9))
                            )
                            .scaleEffect(isPressed ? 0.95 : 1.0) // 👈 manual scale
                    }.buttonStyle(ScaleButtonStyle()) // 👈 Custom style
                        .padding(.leading, 120)
                    
                    
                    
                    
                    
                    
                }.padding()
                    .padding(.top,40)
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    ArtistDirectoryView()
}



struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
}






