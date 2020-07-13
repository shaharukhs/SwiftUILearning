//
//  ImageRowView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 06/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for ImageRowView
/// View for ImageRowView
struct ImageRowView: View {
    // MARK: - View
    /// Body for TextSwiftUIView
    var body: some View {
        VStack {
            Spacer()
            Image("image2")
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            Spacer()
            Image("image1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            Spacer()
        }
    }
}

// MARK: - ImageRowView_Previews
/// Preview provider for ImageRowView
struct ImageRowView_Previews: PreviewProvider {
    static var previews: some View {
        ImageRowView()
    }
}
