//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Luiz Araujo on 24/11/23.
//

import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(

                LinearGradient(
                    colors: configuration.isPressed ?
                    [Color.customGrayMedium, Color.customGrayLight] :
                    [Color.customGrayLight, Color.customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
}
