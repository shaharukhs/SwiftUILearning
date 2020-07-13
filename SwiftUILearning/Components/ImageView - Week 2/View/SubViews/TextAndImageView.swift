//
//  TextAndImageView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 06/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for TextAndImageView
/// View for TextAndImageView
struct TextAndImageView: View {
    // MARK: - View
    /// Body for TextSwiftUIView
    var body: some View {
        ImageWithTextView(title: "Image with Text and Icon", imageName: "image2")
    }
}

// MARK: - Struct for ImageWithTextView
/// View for ImageWithTextView
struct ImageWithTextView: View {
    // MARK: - Variables
    let title: String
    let imageName: String
    
    // MARK: - View
    /// Body for TextSwiftUIView
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .font(.body)
                    .foregroundColor(Color.orange)
                Text(title)
                    .font(.body)
                    .foregroundColor(Color.orange)
            }
            .shadow(radius: 10)
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200, alignment: .center)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.orange, lineWidth: 4))
                .shadow(radius: 10)
            
        }
    }
}

// MARK: - TextAndImageView_Previews
/// Preview provider for TextAndImageView
struct TextAndImageView_Previews: PreviewProvider {
    static var previews: some View {
        TextAndImageView()
    }
}
