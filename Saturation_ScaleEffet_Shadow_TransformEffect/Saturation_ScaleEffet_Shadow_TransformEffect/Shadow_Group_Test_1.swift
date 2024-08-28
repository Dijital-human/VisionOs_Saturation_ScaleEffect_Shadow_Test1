//
//  Shadow_Group_Test_1.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

struct Shadow_Group_Test_1: View {
    var body: some View {
        ZStack{
            Color.white.clipShape(RoundedRectangle(cornerRadius: 50.0))
            
            VStack(spacing: 20.0){
                Text("Shadow and Group Box").foregroundStyle(.black)
                    .shadow(color: .black, radius: 3, x: 0.0, y: 30.0)
                GroupBox("Group Box") {
                    VStack(spacing: 40.0){
                        Color.blue.frame(width: 600, height: 100).clipShape(RoundedRectangle(cornerRadius: 25.0)).overlay {
                            Text("Shadow 1").padding()
                        }
                        
                        Color.blue.frame(width: 600, height: 100).clipShape(RoundedRectangle(cornerRadius: 25.0)).overlay {
                            Text("Shadow 2").padding()
                        }
                        
                        Color.blue.frame(width: 600, height: 100).clipShape(RoundedRectangle(cornerRadius: 25.0)).overlay {
                            Text("Shadow 3").padding()
                        }
                    }.padding(40)
                }
                    .background(.gray)
                    .padding(40).shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            }
        }.font(Font.custom("Georgia", size: 44)).foregroundStyle(.black)
    }
}

#Preview(windowStyle:.automatic) {
    Shadow_Group_Test_1()
}
