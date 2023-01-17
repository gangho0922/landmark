//
//  LandMarkList.swift
//  practice
//
//  Created by AnnKangHo on 2022/12/19.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) {landMark in
                
            }
            .navigationTitle("LandMarks")
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
