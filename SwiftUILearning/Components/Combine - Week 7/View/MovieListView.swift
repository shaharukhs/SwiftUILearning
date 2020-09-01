//
//  MovieListView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 01/09/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for MovieListView
/// View for MovieListView
struct MovieListView: View {

    // MARK: - Variables
    @ObservedObject var viewModel: MovieListObservable

    // MARK: - View
    /// Body for View
    var body: some View {
        List {
            ForEach(viewModel.movies, id: \.self) { movieObject in
                ZStack {
                    VStack {
                        MovieListRow(cellData: movieObject)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Movie List"))
    }
}

// MARK: - MovieListView_Previews
/// Preview provider for MovieListView
struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(viewModel: MovieListObservable())
    }
}
