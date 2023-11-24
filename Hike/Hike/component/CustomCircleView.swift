//
//  CustomCircleView.swift
//  Hike
//
//  Created by Luiz Araujo on 24/11/23.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatingGradient = false

    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [Color.customIndigoMedium,
                                 Color.customSalmonLight],
                        startPoint: isAnimatingGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimatingGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatingGradient.toggle()
                    }
                }
            .frame(width: 256, height: 256)

            MotionAnimationView()
        }//: ZSTACK
    }
}

#Preview {
    CustomCircleView()
}
