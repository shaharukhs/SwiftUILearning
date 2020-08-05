//
//  MovieDetailDescriptionView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 03/08/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for MovieDetailDescriptionView
/// View for MovieDetailDescriptionView
struct MovieDetailDescriptionView: View {
    // MARK: - Variables
    let details: Details

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameter details: Details object
    init(details: Details) {
        self.details = details
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Plot Summary")
                .font(.custom(CustomFont.robotoBold, size: 26))
            Text(self.details.detailsDescription)
            .font(.custom(CustomFont.robotoRegular, size: 16))
            .foregroundColor(Color.gray)
        }
        .padding()
    }
}

// MARK: - MovieDetailDiscriptionView_Previews
/// Preview provider for MovieDetailDiscriptionView
struct MovieDetailDiscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailDescriptionView(details: DummyMovieDetailData.model.details)
    }
}
