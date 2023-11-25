//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Luiz Araujo on 24/11/23.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimating = false

    var body: some View {
        ZStack {

            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1.0)
                    .onAppear {
                        withAnimation(
                            .interpolatingSpring(
                                stiffness: 0.25,
                                damping: 0.25
                            )
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ) {
                            isAnimating.toggle()
                        }
                    }
            }

        }//: ZSTACK
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }

    private func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }

    private func randomSize() -> CGFloat {
        CGFloat.random(in: 4...80)
    }

    private func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2.0))
    }

    private func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }

    private func randomDelay() -> Double {
        Double.random(in: 0.0...2.0)
    }
}

#Preview {
    MotionAnimationView()
        .background(
            Circle()
                .fill(.teal)
        )
}
