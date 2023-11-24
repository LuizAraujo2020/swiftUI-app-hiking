import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES

    @State private var imageNumber = 1
    @State private var randomNumber = 1

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
                    CustomCircleView()

                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut, value: imageNumber)
                }

                // MARK: - FOOTER

                Button {
                    randomImage()
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

    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber

        imageNumber = randomNumber
    }
}

#Preview {
    CardView()
}
