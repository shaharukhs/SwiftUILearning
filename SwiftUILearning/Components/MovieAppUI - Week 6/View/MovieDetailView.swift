//
//  MovieDetailView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 03/08/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for MovieDetailView
/// View for MovieDetailView
struct MovieDetailView: View {
    // MARK: - Variables
    private let viewModel = MovieDetailsViewModel()
    @State var movieDetailModel: MovieDetailModel
    @State var navBarHidden: Bool = true
    @Environment(\.presentationMode) var presentation

    // MARK: - View
    /// Body for View
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ZStack(alignment: .topLeading) {
                VStack {
                    ImageAndRatingView(posterImage: movieDetailModel.poster, ratingDetails: movieDetailModel.ratingDetails)
                    Spacer(minLength: 60)
                    MovieSubDetailView(movieDetail: self.movieDetailModel.moviewDetail, buttonTapAction: {
                        print("Add to wishlist tapped")
                    })
                        .padding(.vertical)
                    MovieDetailDescriptionView(details: self.movieDetailModel.details)
                    CrewAndCastView(crewAndCastItems: self.movieDetailModel.crewAndCasts)
                }
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                }
                .accentColor(.black)
                .padding()
            }
        }
        .onAppear {
            self.movieDetailModel = self.viewModel.getMovieDetails()
        }
        .navigationBarTitle("")
        .navigationBarHidden(self.navBarHidden)
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            self.navBarHidden = true
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            self.navBarHidden = false
        }
    }
}

// MARK: - MovieDetailView_Previews
/// Preview provider for MovieDetailView
struct MovieDetailView_Previews: PreviewProvider {
    private let viewModel = MovieDetailsViewModel()
    
    static var previews: some View {
        MovieDetailView(movieDetailModel: DummyMovieDetailData.model)
    }
}
