//
//  Saturation_Test_3.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

struct Saturation_Test_3: View {
    @State private var slider: Double = 3.0
    @State private var slider1: Double = 0.0
    @State private var slider2: Double = 1.0

    var body: some View {
        ZStack{
            Image("bg-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.luminanceToAlpha()
                .saturation(slider)
                //.scaleEffect(CGSize(width: slider, height: slider), anchor: .center)
                
            VStack{
                Text("Saturation")
                    .shadow(color: .white, radius: 3, x: -20.0, y: -20.0)
                    .font(Font.custom("Georgia", size: 44))
                    .rotationEffect(.degrees(slider1), anchor: .topLeading)
                
                
                Text("Resimlerin Saturation funcsiyasi vasitesi ile rengleri ile oynamaq mumkundur")
                    .font(.largeTitle)
                    .fontDesign(.serif)
                    .scaleEffect(CGSize(width: slider2, height: slider2),anchor: .topLeading)
                HStack(spacing: 90.0){
                    Text("Saturation").font(.largeTitle)
                    Slider(value: $slider, in: 0.0...3.0, step: 0.1)
                }.padding(.horizontal, 50)
                
                HStack(spacing: 90.0){
                    Text("Rotation Effect").font(.largeTitle)
                    Slider(value: $slider1, in: 0.0...360.0, step: 0.1)
                }.padding(.horizontal, 50)
                
                HStack(spacing: 90.0){
                    Text("Scale Effect").font(.largeTitle)
                    Slider(value: $slider2, in: 0.0...2.0, step: 0.1)
                }.padding(.horizontal, 50)
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    Saturation_Test_3()
}
