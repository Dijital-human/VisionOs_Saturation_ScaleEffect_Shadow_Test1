//
//  ContentView.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    let rengler: [Color] = [.red, .pink, .purple, .blue, .cyan,]
    let saturationValue:[Double] = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.7, 0.8, 1, 10]
    var body: some View {
        VStack(spacing: 10.0) {
            Text("Saturation Test - 1").font(Font.custom("Menlo", size: 32))
                .bold()
                .padding()
                .glassBackgroundEffect(displayMode: .implicit)
                .shadow(color: .black, radius: 3, x: 0.0, y: 0.0)
            Text("Saturation renglere verilen bir ozellikdi.Saturation func resimler uzerinde ve diger nesneler uzerinde istifade ede bilerik")
                .kerning(0.2)//Ara mesafesi
                .tracking(0.2)//Ara Mesafesi
                .blur(radius: 0.5)//Bulaniqliq
                .glassBackgroundEffect()//Arxa Plana xususi gorunus verir
                
                ForEach(rengler, id: \.self){reng in
                    HStack(spacing: 10.0){
                        reng.frame(width: 100, height: 100).overlay {
                            Text("1")
                        }
                        ForEach(saturationValue, id: \.self){value in
                            reng.saturation(value).frame(width: 100, height: 100).overlay {
                                Text("\(String(value))")
                            }
                        
                    }
                    }.foregroundStyle(.black)
            }
            
        }
        .font(.title3)
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
