//
//  Scale_Effect_Test_2.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

struct Scale_Effect_Test_2: View {
    @State private var slider:Double = 1.0
    var body: some View {
        VStack(spacing: 60.0){
            Text("Scale Effect Test - 2")
            HStack{
                Image("img-1")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fill)
                    .saturation(slider)
                    .scaleEffect(
                        CGSize(
                            width: slider,
                            height: slider)
                        ,anchor: .trailing
                    )
                Image("img-2")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fill)
                    .saturation(slider)
                    .scaleEffect(
                        CGSize(
                            width: slider,
                            height: slider)
                        ,anchor: .leading
                    )
            }
            Slider(value: $slider,in: 0.0...10.0, step: 0.5).padding()
        }.font(Font.custom("Georgia", size: 34))
    }
}

#Preview (windowStyle: .automatic){
    Scale_Effect_Test_2()
}
