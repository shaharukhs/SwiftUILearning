//
//  ImageAndRatingView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 03/08/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for ImageAndRatingView
/// View for ImageAndRatingView
struct ImageAndRatingView: View {
    // MARK: - Variables
    let posterImage: String
    let ratingDetails: RatingDetails

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameter posterImage: string object
    /// - Parameter ratingDetails: RatingDetails object
    init(posterImage: String, ratingDetails: RatingDetails) {
        self.posterImage = posterImage
        self.ratingDetails = ratingDetails
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            MovieDetailImageView(image: posterImage)
            MovieRatingView(ratingDetails: ratingDetails)
            .offset(x: 0, y: 50)
        }
    }
}

// MARK: - ImageAndRatingView_Previews
/// Preview provider for ImageAndRatingView
struct ImageAndRatingView_Previews: PreviewProvider {
    static var previews: some View {
        ImageAndRatingView(posterImage: DummyMovieDetailData.model.poster,
                           ratingDetails: DummyMovieDetailData.model.ratingDetails)
    }
}
