//
//  Uygulama - 1.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

struct Uygulama___1: View {
    var body: some View {
        ZStack{
            Color.cyan.clipShape(RoundedRectangle(cornerRadius: 25.0))
            VStack{
                Text("Uygulama - 1")
                Spacer()
                HStack{
                    Button(action: {}){
                        Image(systemName: "lightbulb")
                    }.frame(width: 200, height: 200).overlay {
                        Rectangle()
                            .stroke(.cyan, lineWidth: 8)
                            .fill(.cyan.opacity(0.1))
                            .shadow(radius: 1, x: 8, y: 8)
                        
                    }.overlay {
                        Rectangle()
                            .stroke(.cyan, lineWidth: 8)
                            .fill(.cyan.opacity(0.1))
                            .shadow(color: .white.opacity(0.2),radius: 1, x: -8, y: -8)
                    }.clipped()
                    
                    Button(action: {}){
                        Image(systemName: "lightbulb")
                    }.frame(width: 200, height: 200).overlay {
                        Rectangle()
                            .stroke(.cyan, lineWidth: 8)
                            .fill(.cyan.opacity(0.1))
                            .shadow(radius: 1, x: -8, y: -8)
                        
                    }.overlay {
                        Rectangle()
                            .stroke(.cyan, lineWidth: 8)
                            .fill(.cyan.opacity(0.1))
                            .shadow(color: .white.opacity(0.3),radius: 1, x: 8, y: 8)
                    }.clipped()
                    
                    Button(action: {}){
                        Image(systemName: "lightbulb")
                    }.frame(width: 200, height: 200).overlay {
                        Circle()
                            .stroke(.cyan, lineWidth: 8)
                            .fill(.cyan.opacity(0.1))
                            .shadow(radius: 1, x: 8, y: 6)
                        
                    }.overlay {
                        Circle()
                            .stroke(.cyan, lineWidth: 8)
                            .fill(.cyan.opacity(0.1))
                            .shadow(color: .white.opacity(0.3),radius: 1, x: -8, y: -8)
                    }.clipShape(Circle())
                    
                    Button(action: {}){
                        Image(systemName: "lightbulb")
                    }.frame(width: 200, height: 200).overlay {
                        Circle()
                            .stroke(.cyan, lineWidth: 8)
                            .fill(.cyan.opacity(0.1))
                            .shadow(radius: 1, x: -8, y: -6)
                        
                    }.overlay {
                        Circle()
                            .stroke(.cyan, lineWidth: 8)
                            .fill(.cyan.opacity(0.1))
                            .shadow(color: .white.opacity(0.3),radius: 1, x: 8, y: 8)
                    }.clipShape(Circle())
                }
                
                HStack(spacing: 20.0){
                    Button(action: {}, label: {
                        Image(systemName: "person")
                    }).frame(width: 200, height: 200).overlay {
                        Rectangle()
                            .stroke(.cyan, lineWidth: 4)
                            .shadow(radius: 2, x: 8, y: 8)

                    }.overlay {
                        Rectangle()
                            .stroke(.cyan,lineWidth: 4)
                            .shadow(color:.white.opacity(0.2),radius: 2, x: -8, y: -8)
                    }.clipped()
                    Button(action: {}, label: {
                        Image(systemName: "visionpro").frame(width: 200, height: 200)
                    }).overlay {
                        RoundedRectangle(cornerRadius: 25.0).stroke(.cyan, lineWidth: 1).shadow(radius: 4, x: -8, y: -8)
                    }.overlay {
                        RoundedRectangle(cornerRadius: 25.0).stroke(.secondary).shadow(radius: 3, x: -8, y: -8)
                    }.clipShape(RoundedRectangle(cornerRadius: 25.0))
                    
                }
                Spacer()
            }.font(Font.custom("Futura", size: 42)).foregroundStyle(.black)
        }
    }
}

#Preview(windowStyle:.automatic) {
    Uygulama___1()
}
