//
//  MovieListObservable.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 01/09/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Combine
import UIKit

// MARK: - Class for MovieListObservable
/// Class for MovieListObservable
class MovieListObservable: ObservableObject {

    // MARK: - Variables
    /// Cancellable Object
    private var cancellable: AnyCancellable?

    /// Movies Array
    var movies = [PopularMovie]() {
        didSet {
            self.objectWillChange.send()
        }
    }

    // MARK: - Intialiser
    /// Intialiser method
    init() {
        getMovies()
    }

    // MARK: - User define methods
    // Subscriber implementation
    func getMovies() {
        cancellable = MovieDB.request(.popularMovies)
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: { _ in },
                  receiveValue: {
                    self.movies = $0.results
            })
    }
}
