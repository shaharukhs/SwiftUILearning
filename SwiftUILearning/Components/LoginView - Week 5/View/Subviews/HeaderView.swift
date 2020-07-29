//
//  HeaderView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for HeaderView
/// View for HeaderView
struct HeaderView: View {
    // MARK: - Variables
    let icon: String
    let title: String
    let subTitle: String

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack {
            Image(icon)
                .resizable()
                .frame(width: 120, height: 120, alignment: .center)
                .font(.body)
            VStack(spacing: 5) {
                Text(title)
                    .font(.custom(CustomFont.robotoBlack, size: 24))
                    .foregroundColor(.primaryLoginColor)
                Text(subTitle)
                    .font(.custom(CustomFont.robotoRegular, size: 14))
                    .foregroundColor(.secondaryLoginColor)
            }
        }
        
    }
}

// MARK: - HeaderView_Previews
/// Preview provider for HeaderView
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(icon: "logo_login",
                   title: "App Title",
                   subTitle: "App subtitle for header view")
    }
}
