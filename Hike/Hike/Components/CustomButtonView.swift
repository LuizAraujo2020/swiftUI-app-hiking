//
//  CustomButtonView.swift
//  Hike
//
//  Created by Luiz Araujo on 24/11/23.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.customGreenLight,
                            Color.customGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            Color.customGrayLight,
                            Color.customGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    , lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            Color.customGrayLight,
                            Color.customGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        }//: ZStack
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .padding()
}
