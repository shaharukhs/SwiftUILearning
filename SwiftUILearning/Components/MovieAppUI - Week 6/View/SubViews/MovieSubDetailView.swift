//
//  MovieSubDetailView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 03/08/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for MovieSubDetailView
/// View for MovieSubDetailView
struct MovieSubDetailView: View {
    // MARK: - Variables
    let didTapButton: (() -> Void)
    let movieDetail: MovieDetail

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameters:
    ///   - buttonTapAction: button action closure
    init(movieDetail: MovieDetail, buttonTapAction: @escaping (() -> Void)) {
        self.movieDetail = movieDetail
        self.didTapButton = buttonTapAction
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(movieDetail.title)
                        .font(.custom(CustomFont.robotoMedium, size: 28))
                    HStack(spacing: 20) {
                        Text(movieDetail.year)
                        .font(.custom(CustomFont.robotoLight, size: 14))
                        Text(movieDetail.year)
                        .font(.custom(CustomFont.robotoLight, size: 14))
                        Text(movieDetail.duration)
                        .font(.custom(CustomFont.robotoLight, size: 14))
                    }
                }
                Spacer()
                AddMovieDetailButton(buttonTapAction: {
                    self.buttonAction()
                })
            }
            .padding()
            TagScrollView(tags: movieDetail.tags)
                .padding([.leading, .trailing])
        }
    }

    /// Func to get button action
    func buttonAction() {
        self.didTapButton()
    }
}

// MARK: - Struct for AddMovieDetailButton
/// View for AddMovieDetailButton
struct AddMovieDetailButton: View {
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
        Button(action: {
            self.didTapButton()
        }, label: {
            Image(systemName: "plus")
            .frame(width: 60, height: 60, alignment: .center)
            .background(Color.pink)
            .foregroundColor(.white)
            .cornerRadius(radius: 15, corners: .allCorners)
        })
    }
}

// MARK: - MovieSubDetailView_Previews
/// Preview provider for MovieSubDetailView
struct MovieSubDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSubDetailView(movieDetail: DummyMovieDetailData.model.moviewDetail, buttonTapAction: { })
    }
}
