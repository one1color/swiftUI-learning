//
//  LandmarkList.swift
//  apple-officail-swiftUI-tutorial
//
//  Created by koki isshiki on 13.02.23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    //    static var previews: some View {
    //        ForEach(["iPhone 14 Pro", "iPhone XS Max"], id: \.self) { deviceName in
    //            LandmarkList()
    //                .previewDevice(PreviewDevice(rawValue: deviceName))
    //                .previewDisplayName(deviceName)
    //        }
    //    }
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
