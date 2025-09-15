//
//  ExpandableListViewMode.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/14/25.
//

import Foundation

class ExpandableListViewMode: ObservableObject {
    
    @Published var items: [Items] = [
        Items(title: "What is The Creative India", details: "The Creative India is a streaming service that allows you to watch movies and shows on demand."),
        Items(title: "How much does The Creative India?", details: "The Creative India is a streaming service that allows you to watch movies and shows on demand."),
        Items(title: "What content is available on The Creative India?", details: "The Creative India is a streaming service that allows you to watch movies and shows on demand."),
        Items(title: "How can I watch The Creative India?", details: "The Creative India is a streaming service that allows you to watch movies and shows on demand."),
        Items(title: "How do I sign up for The Creative India?", details: "The Creative India is a streaming service that allows you to watch movies and shows on demand."),
        Items(title: "What is the The Creative India free trial?", details: "The Creative India is a streaming service that allows you to watch movies and shows on demand."),
        
        
    ]
}

