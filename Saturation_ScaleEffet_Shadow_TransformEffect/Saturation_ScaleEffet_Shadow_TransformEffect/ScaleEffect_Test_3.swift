//
//  ScaleEffect_Test_3.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

struct ScaleEffect_Test_3: View {
    var body: some View {
        ZStack{
            Image("bg-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                //.opacity(0.8)
                .saturation(3.0)
            VStack{
                Text("Scale Effect Test - 3")
                HStack{
                    Image("img-2", bundle: .main)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .scaleEffect(x: 2.0, y: 2.0, anchor: .center)
                    
                    Image("img-1", bundle: .main)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .scaleEffect(x: 1.5, y: 1.5, anchor: .center)
                }
            }.font(Font.custom("Georgia", size: 32))
        }
    }
}

#Preview (windowStyle:.automatic){
    ScaleEffect_Test_3()
}
