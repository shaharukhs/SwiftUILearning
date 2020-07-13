//
//  SocialMediaListRow.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 13/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for SocialMediaListRow
/// View for SocialMediaListRow
struct SocialMediaListRow: View {
    // MARK: - Variables
    let icon: String
    let title: String
    let subTitle: String

    /// Text View Constant
    private struct RowConstant {
        /// Frame constant
        static let frameConstant: CGFloat = 20
        
        /// Top padding constant
        static let topPadding: CGFloat = 2
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        HStack {
            HStack(alignment: .top) {
                Image(icon)
                .resizable()
                .scaledToFit()
                    .frame(width: RowConstant.frameConstant,
                           height: RowConstant.frameConstant,
                           alignment: .center)
                    .padding(.top, RowConstant.topPadding)
                VStack(alignment: .leading) {
                    Text(title)
                        .fontWeight(.medium)
                        .font(.title)
                    Text(subTitle)
                        .fontWeight(.light)
                        .font(.subheadline)
                }
            }
            Spacer()
            Button(action: buttonAction) {
                Image(systemName: "chevron.right")
                    .frame(width: RowConstant.frameConstant,
                           height: RowConstant.frameConstant)
                    .foregroundColor(.black)
            }
        }
    }

    // MARK: - User define action
    /// Func to detect button tapped action
    private func buttonAction() {
        //TODO: button Action
    }
}

// MARK: - SocialMediaListRow_Previews
/// Preview provider for SocialMediaListRow
struct SocialMediaListRow_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaListRow(icon: "instagram",
                           title: "Instagram",
                           subTitle: "Instagram was launched as a unique social networking platform that was completely based on sharing photos and videos. This photo sharing social networking app thus enables you to capture the best moments of your life, with your phone’s camera or any other camera, and convert them into works of art.")
    }
}
