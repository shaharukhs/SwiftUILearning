//
//  MovieDetailImageView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 03/08/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for MovieDetailImageView
/// View for MovieDetailImageView
struct MovieDetailImageView: View {
    // MARK: - Variables
    let image: String
    @Environment(\.imageCache) var cache: ImageCache

    // MARK: - View
    /// Body for View
    var body: some View {
        AsyncImage(
            url:URL(string: image)!,
            cache: self.cache,
            placeholder: Text("Loading ..."),
            configuration: { $0.resizable() })
            .aspectRatio(contentMode: .fit)
            .clipped()
            .cornerRadius(radius: 50, corners: [.bottomLeft, .bottomRight])
    }
}

// MARK: - MovieDetailImageView_Previews
/// Preview provider for MovieDetailImageView
struct MovieDetailImageView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailImageView(image: DummyMovieDetailData.model.poster)
    }
}
