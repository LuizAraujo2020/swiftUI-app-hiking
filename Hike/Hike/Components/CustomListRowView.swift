//
//  CustomListRowView.swift
//  Hike
//
//  Created by Luiz Araujo on 24/11/23.
//

import SwiftUI

struct CustomListRowView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String?
    @State var rowTintColor: Color
    @State var rowLinkLabel: String?
    @State var rowLinkDestination: String?

    var body: some View {
        
        LabeledContent {
            if let rowContent {
                Text(rowContent)
                    .foregroundStyle(.primary)
                .fontWeight(.heavy)
            }  else if (rowLinkLabel != nil && rowLinkDestination != nil) {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundStyle(.pink)
            } else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)

                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }

                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            rowLabel: "Application",
            rowIcon: "apps.iphone",
            rowContent: "Hike",
            rowTintColor: .blue
        )

        CustomListRowView(
            rowLabel: "Website",
            rowIcon: "globe",
            rowContent: nil,
            rowTintColor: .indigo,
            rowLinkLabel: "Google",
            rowLinkDestination: "https://www.google.com"
        )
    }
}
