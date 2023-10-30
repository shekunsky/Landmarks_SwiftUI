//
//  ContentView.swift
//  WatchLandmarks Extension Watch App
//
//  Created by Alex2 on 30.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
