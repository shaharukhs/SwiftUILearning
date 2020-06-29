//
//  TextSwiftUIView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/06/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for TextSwiftUIView
/// View for TextSwiftUIView
struct TextSwiftUIView: View {
    
    /// Text View Constant
    private struct TextSwiftUIViewConstant {
        /// Corner radius constant
        static let cornerRadius: CGFloat = 20
        /// Stroke line width constant
        static let lineWidth: CGFloat = 4
        /// Text frame width constat
        static let textWidht: CGFloat = 200
        /// Shadow radius constant
        static let shadowRadius: CGFloat = 10
        /// Text maximum line limit constant
        static let maxLineLimit: Int = 3
    }
    
    // MARK: - View
    /// Body for TextSwiftUIView
    var body: some View {
        Text("My multiline text with fixed width")
            .font(.system(size: 20, weight: .black, design: .default))
            .padding()
            .background(Color.purple)
            .foregroundColor(Color.white)
            .cornerRadius(TextSwiftUIViewConstant.cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: TextSwiftUIViewConstant.cornerRadius)
                    .stroke(Color.blue, lineWidth: TextSwiftUIViewConstant.lineWidth)
            )
            .shadow(color: .red, radius: TextSwiftUIViewConstant.shadowRadius, x: 5, y: 5)
            .frame(maxWidth: TextSwiftUIViewConstant.textWidht)
            .multilineTextAlignment(.center)
            .lineLimit(TextSwiftUIViewConstant.maxLineLimit)
    }
}

// MARK: - TextSwiftUIView_Previews
/// Preview provider for TextSwiftUIView
struct TextSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextSwiftUIView()
    }
}
