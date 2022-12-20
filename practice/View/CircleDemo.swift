//
//  CircleDemo.swift
//  roadfriendTEMI
//
//  Created by AnnKangHo on 2022/12/19.
//

import SwiftUI

struct CircleDemo: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 10)
    }
}

struct CircleDemo_Previews: PreviewProvider {
    static var previews: some View {
        CircleDemo(image: Image("turtlerock"))
    }
}
