//
//  DeviceViewModel.swift
//  AssignmentArmWorldwide
//
//  Created by Praveen Verma on 9/12/25.
//

import Foundation

class DeviceViewModel: ObservableObject {
    
    @Published var devices: [DeviceInfo] = [
        DeviceInfo(imageName: "IconPhone",
                   title: "Smartphones",
                   description: "The Creative India is optimized for both Android and iOS smartphones. Download our app from the Google Play Store or the Apple App Store"),
        
        DeviceInfo(imageName: "IconTab",
                   title: "Tablet",
                   description: "The Creative India is optimized for both Android and iOS smartphones. Download our app from the Google Play Store or the Apple App Store"),
        
        DeviceInfo(imageName: "IconSmartTV",
                   title: "Smart TV",
                   description: "The Creative India is optimized for both Android and iOS smartphones. Download our app from the Google Play Store or the Apple App Store"),
        
        DeviceInfo(imageName: "IconLaptop",
                   title: "Laptops",
                   description: "The Creative India is optimized for both Android and iOS smartphones. Download our app from the Google Play Store or the Apple App Store")
    ]
}
