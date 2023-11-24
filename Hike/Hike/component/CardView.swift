import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()

            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )

                        Spacer()

                        Button {
                            // Show sheet
                            print("The button was pressed.")
                        } label: {
                            CustomButtonView()
                        }
                    }

                    Text("Fun and enjoyable outdoor activity for family and friends.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(Color.customGrayMedium)
                }//: HEADER
                .padding(.horizontal, 30)

                // MARK: - MAIN CONTENT

                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [Color.customIndigoMedium,
                                         Color.customSalmonLight],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)

                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }

                // MARK: - FOOTER

                Button {
                    // GEnerate Random number
                    print("The button was pressed.")
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color.customGreenLight,
                                         Color.customGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(
                            color: .black.opacity(0.25),
                            radius: 0.25, x: 1, y: 2
                        )
                }
                .buttonStyle(GradientButtonStyle())
            }//: ZSTACK
        }//: CARD
        .frame(width: 320, height: 579)
    }
}

#Preview {
    CardView()
}
