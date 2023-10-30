//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Alex2 on 25.10.2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        #if os(watchOS)
            WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
