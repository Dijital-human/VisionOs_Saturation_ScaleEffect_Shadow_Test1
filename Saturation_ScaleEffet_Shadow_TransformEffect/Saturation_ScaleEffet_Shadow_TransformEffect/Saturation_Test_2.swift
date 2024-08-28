//
//  Saturation_Test_2.swift
//  Saturation_ScaleEffet_Shadow_TransformEffect
//
//  Created by Famil Mustafayev on 09.08.24.
//

import SwiftUI

struct Saturation_Test_2: View {
    let imgs:[String] = ["img-1", "img-2"]
    let saturationValue:[Double] = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.7, 0.8, 1, 10]

    var body: some View {
        VStack(spacing: 10.0){
            Text("Saturation").font(Font.custom("Courier New", size: 32))
            Text("Saturation resimlerin rengine verile bilecek bir ozellikdi")
                .font(Font.custom("Courier New", size: 22))                .underline(color: .red)
            ForEach(imgs, id: \.self){img in
                HStack(spacing: 10.0){
                    Image(img).resizable().frame(width: 150, height: 150).aspectRatio(contentMode: .fit)
                    ForEach(saturationValue, id: \.self){value in
                        Image(img)
                            .resizable()
                            .frame(width: 100 - (value * 50), height: 100 - (value * 50))
                            .aspectRatio(contentMode: .fit)
                            .saturation(value)
                    }
                }
            }
            HStack{
                Image("img-1").resizable().scaledToFill().frame(width: 200, height: 200).saturation(1)

                Image("img-1").resizable().scaledToFill().frame(width: 200, height: 200).saturation(3)
                Image("img-2").resizable().scaledToFill().frame(width: 200, height: 200).saturation(3.0)
                Image("img-2").resizable().scaledToFill().frame(width: 200, height: 200).saturation(1.0)

            }
        }.font(Font.custom("Courier New", size: 32))
    }
}

#Preview(windowStyle: .automatic) {
    Saturation_Test_2()
}
