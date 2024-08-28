//
//  ScalleEffect_Test_1.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

struct ScalleEffect_Test_1: View {
    var body: some View {
        VStack(spacing:40.0){
            Text("Scalle Effect Test - 1")
                .foregroundStyle(.cyan)
                .scaleEffect(CGSize(width: 2.0, height: 2.0))
            Text("Var Olan Contentin olcusunu deyisir")
                .foregroundStyle(.cyan)
            
            Divider()
            
            Text("Scale Effect topTrailing").scaleEffect(CGSize(width: 2.0, height: 2.0), anchor: .topLeading)
            Text("Scale Effect top").scaleEffect(CGSize(width: 2.0, height: 2.0), anchor: .top)
            Text("Scale Effect topLeading").scaleEffect(CGSize(width: 2.0, height: 2.0), anchor: .topTrailing)
            
            Divider()

            Text("Scale Effect bottomLeading").scaleEffect(CGSize(width: 2.0, height: 2.0), anchor: .bottomLeading)
            Text("Scale Effect bottom").scaleEffect(CGSize(width: 2.0, height: 2.0), anchor: .bottom)
            Text("Scale Effect bottomTrailing").scaleEffect(CGSize(width: 2.0, height: 2.0), anchor: .bottomTrailing)

            Divider()
            Text("Scale Effect leading").scaleEffect(CGSize(width: 2.0, height: 2.0), anchor: .leading)
            Text("Scale Effect center").scaleEffect(CGSize(width: 2.0, height: 2.0), anchor: .center)
            Text("Scale Effect trailing").scaleEffect(CGSize(width: 2.0, height: 2.0), anchor: .trailing)


            
            
            
        }.font(Font.custom("Academy Engraved LET", size: 12))
    }
}

#Preview(windowStyle: .automatic) {
    ScalleEffect_Test_1()
}
