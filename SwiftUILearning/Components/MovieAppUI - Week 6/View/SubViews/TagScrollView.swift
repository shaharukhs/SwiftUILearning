//
//  TagScrollView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 03/08/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for TagScrollView
/// View for TagScrollView
struct TagScrollView: View {
    // MARK: - Variables
    let tags: [String]

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameter tags: String array object
    init(tags: [String]) {
        self.tags = tags
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(tags, id: \.self){tag in
                    HStack {
                        Text(tag)
                            .font(.custom(CustomFont.robotoRegular, size: 12))
                    }
                    .padding(10)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: .infinity)
                            .stroke(Color.red, lineWidth: 1)
                    )
                        .cornerRadius(.infinity)
                        .lineLimit(1)
                    
                }
            }
        }
    }
}

// MARK: - TagScrollView_Previews
/// Preview provider for TagScrollView
struct TagScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TagScrollView(tags: DummyMovieDetailData.model.moviewDetail.tags)
    }
}
