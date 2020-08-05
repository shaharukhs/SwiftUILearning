//
//  MovieRatingView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 03/08/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for MovieRatingView
/// View for MovieRatingView
struct MovieRatingView: View {
    // MARK: - Variables
    let ratingDetails: RatingDetails

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameter ratingDetails: RatingDetails object
    init(ratingDetails: RatingDetails) {
        self.ratingDetails = ratingDetails
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        HStack(alignment: .top, spacing: 30) {
            RatingView(rating: ratingDetails.rate.star, totalRating: ratingDetails.rate.total)
            RateThisMovieButtonView(buttonTapAction: {
                print("Rate This Movie Button Tapped")
            })
            MetaScoreView(metaScore: ratingDetails.metascore.score, totalCritics: ratingDetails.metascore.critics)
        }
        .padding(.leading, 30)
        .background(Color.white)
        .cornerRadius(radius: .infinity, corners: [.bottomLeft, .topLeft])
        .shadow(radius: 5)
    }
}

// MARK: - Struct for RatingView
/// View for RatingView
struct RatingView: View {
    // MARK: - Variables
    let rating: String
    let totalRating: String

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: "star.fill")
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(.yellow)
            HStack(spacing: 0) {
                Text(rating)
                    .font(.custom(CustomFont.robotoMedium, size: 14))
                Text("/10")
                    .font(.custom(CustomFont.robotoRegular, size: 12))
            }
            Text(totalRating)
                .font(.custom(CustomFont.robotoRegular, size: 13))
                .foregroundColor(.gray)
        }
        .padding()
    }
}

// MARK: - Struct for RateThisMovieButtonView
/// View for RateThisMovieButtonView
struct RateThisMovieButtonView: View {
    // MARK: - Variables
    let didTapButton: (() -> Void)

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameters:
    ///   - buttonTapAction: button action closure
    init(buttonTapAction: @escaping (() -> Void)) {
        self.didTapButton = buttonTapAction
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        Button(action: { self.buttonAction() }, label: {
            VStack(spacing: 5) {
                Image(systemName: "star")
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.black)
                Text("Rate This")
                    .font(.custom(CustomFont.robotoMedium, size: 14))
                    .foregroundColor(.black)
            }
        })
        .padding()
    }

    /// Func to get button action
    func buttonAction() {
        self.didTapButton()
    }
}

// MARK: - Struct for MetaScoreView
/// View for MetaScoreView
struct MetaScoreView: View {
    // MARK: - Variables
    let metaScore: String
    let totalCritics: String

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameter metaScore: String object
    /// - Parameter totalCritics: String object
    init(metaScore: String, totalCritics: String) {
        self.metaScore = metaScore
        self.totalCritics = totalCritics
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack(spacing: 5) {
            Text(metaScore)
                .frame(width: 30, height: 30, alignment: .center)
                .background(Color(.green))
                .foregroundColor(Color.white)
                .font(.custom(CustomFont.robotoBold, size: 14))
            Text("Metascore")
            .font(.custom(CustomFont.robotoMedium, size: 14))
            .foregroundColor(.black)
            Text("\(totalCritics) critic reviews")
            .font(.custom(CustomFont.robotoRegular, size: 13))
            .foregroundColor(.gray)
        }
    .padding()
    }
}

// MARK: - MovieRatingView_Previews
/// Preview provider for MovieRatingView
struct MovieRatingView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRatingView(ratingDetails: DummyMovieDetailData.model.ratingDetails)
    }
}
