//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Luiz Araujo on 23/11/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    private let cornerRadius = 40.0
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            Color.customGreenDark
                .cornerRadius(cornerRadius)
                .offset(y: 12)

            // MARK: - 2. DEPTH
            Color.customGreenLight
                .cornerRadius(cornerRadius)
                .offset(y: 3)
                .opacity(0.85)

            // MARK: - 1. DEPTH

            LinearGradient(
                colors: [.customGreenLight,
                         .customGreenMedium],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .cornerRadius(cornerRadius)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
