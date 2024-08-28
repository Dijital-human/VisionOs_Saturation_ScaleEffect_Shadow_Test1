//
//  Shadow_Group_Test_2.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

struct Shadow_Group_Test_2: View {
    var body: some View {
        VStack(spacing: 30.0){
            Text("Shadow and Group Test - 2")
            Group{
                Section {
                    HStack(spacing: 30.0){
                        Color.blue.frame(width: 400, height: 100).clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .overlay {
                                Text("Shadow - 1")
                            }
                        
                        Color.blue.frame(width: 400, height: 100).clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .overlay {
                                Text("Shadow - 2")
                            }
                        
                        Color.blue.frame(width: 400, height: 100).clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .overlay {
                                Text("Shadow - 3")
                            }
                    }
                } header: {
                    Text("Header")
                }.shadow(color: .black, radius: 10, x: 10.0, y: 10.0)

            }
            
            GroupBox(label: Text("Group Box Shadow").font(.largeTitle), content: {
                HStack(spacing: 30.0){
                    Color.white.frame(width: 300, height: 100).clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .shadow(color: .white.opacity(0.4), radius: 3, x: -50.0, y: -50.0)
                        .overlay(alignment: .topLeading) {
                        Text("Shadow - 1").foregroundStyle(.black)
                        
                    }
                    
                    Color.white.frame(width: 300, height: 100).clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .shadow(color: .white.opacity(0.4), radius: 3, x: 0.0, y: -50.0)
                        .overlay(alignment: .top) {
                        Text("Shadow - 2").foregroundStyle(.black)
                        
                    }
                    
                    Color.white.frame(width: 300, height: 100).clipShape(RoundedRectangle(cornerRadius: 25.0))
                        .shadow(color: .white.opacity(0.4), radius: 3, x: 50.0, y: -50.0)
                        .overlay(alignment: .topTrailing) {
                        Text("Shadow - 3").foregroundStyle(.black)
                        
                    }
                }.padding(20)
            }).padding()
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40), style: .continuous))
                
        }
        .font(Font.custom("Georgia", size: 42))
        .padding()
    }
}

#Preview(windowStyle:.automatic) {
    Shadow_Group_Test_2()
}
