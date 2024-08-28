//
//  Shadow_Test_1.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

struct Shadow_Test_1: View {
    var body: some View {
        ZStack{
            Image("bg-1", bundle: .main)
                .resizable()
                .scaledToFit()
                .saturation(3.0)
            VStack(spacing: 20.0){
                Text("Shadow").font(Font.custom("Georgia", size: 64)).italic().shadow(color: .white, radius: 3, x: 0.0, y: -30.0)
                Group {
                    Color.blue
                        .frame(width: 400, height: 100)
                        .clipShape(
                            RoundedRectangle(
                                cornerSize:
                                    CGSize(
                                        width: 20,
                                        height: 20),
                                style: .continuous
                            )
                        )
                        .shadow(color: .white.opacity(0.3), radius: 3, x: 60.0, y: -20.0)
                    .overlay {
                        Text("Shadow - 1")//.font(.largeTitle)
                    }
                    
                    Color.blue.frame(width: 400, height: 100).clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20), style: .continuous))
                        .shadow(color: .white.opacity(0.3), radius: 2, x: -60, y: -30)
                        
                        .overlay {
                        Text("Shadow - 2")//.font(.largeTitle)
                    }
                    
                    Color.blue.frame(width: 400, height: 100).clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20), style: .continuous))
                        .shadow(color: .white.opacity(0.4), radius: 4, x: -80, y: 0)
                    .overlay {
                        Text("Shadow - 3")//.font(.largeTitle)
                    }
                    
                    Color.blue.frame(width: 400, height: 100).clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20), style: .continuous))
                    
                        .shadow(color: .white.opacity(0.5), radius: 5, x: 80, y: 40.0)
                    .overlay {
                        Text("Shadow - 4")//.font(.largeTitle)
                    }
                }
            }
        }.font(Font.custom("Georgia", size: 44))
    }
}

#Preview(windowStyle: .automatic) {
    Shadow_Test_1()
}
