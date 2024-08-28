//
//  Saturation_ScaleEffet_Shadow_TransformEffectApp.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

@main
struct Saturation_ScaleEffet_Shadow_TransformEffectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        WindowGroup {
            Shadow_Group_Test_2()
            
        }
        .windowStyle(.plain)
        .defaultSize(width: 2800, height: 2800)
    }
}
