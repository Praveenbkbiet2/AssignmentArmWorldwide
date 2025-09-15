//
//  PlanViewModel.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/12/25.
//


import Foundation

class PlanViewModel: ObservableObject {
    
    @Published var devices: [PlanInfo] = [
        PlanInfo(title: "Basic Plan",
                 description: "Enjoy an extensive library of movies and shows, featuring a range of content, including recently released titles.", price: "99.99"),
        
        PlanInfo(title: "Standard Plan",
                 description: "Access to a wider selection of movies and shows, including most new releases and exclusive content", price: "199.99"),
        
        PlanInfo(title: "Premium Plan",
                 description: "Access to a widest selection of movies and shows, including all new releases and Offline Viewing", price: "299.99"),
        
    ]
}
