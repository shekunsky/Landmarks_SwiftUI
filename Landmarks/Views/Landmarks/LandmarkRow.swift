//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Alex2 on 25.10.2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: ModelData().landmarks[0])
    }
}

struct LandmarkRow_Previews1: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: ModelData().landmarks[1])
    }
}

