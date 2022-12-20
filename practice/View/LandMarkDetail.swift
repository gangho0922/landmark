//
//  LandMarkDetail.swift
//  practice
//
//  Created by AnnKangHo on 2022/12/19.
//

import SwiftUI

struct LandMarkDetail: View {
    var landmark: LandMark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleDemo(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landmark: landmarks[0])
    }
}
