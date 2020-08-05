//
//  MovieDetailViewModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 03/08/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation

// MARK: - Class for MovieDetailsViewModel
/// MovieDetailsViewModel class object
class MovieDetailsViewModel {

    // MARK: - User define methods
    /// Func to get movie details object
    /// - Returns: MovieDetailModel object
    func getMovieDetails() -> MovieDetailModel {
        let model = MovieDetailModel(id: 0,
                                     poster: "https://image.tmdb.org/t/p/original//6ApDtO7xaWAfPqfi2IARXIzj8QS.jpg",
                                     moviewDetail: MovieDetail(id: 1,
                                                                title: "Ford v Ferrari",
                                                                year: "2019",
                                                                rating: "PG-13",
                                                                duration: "2h 32min",
                                                                tags: ["Action", "Biography", "Drama", "Sports"]),
                                     ratingDetails: RatingDetails(id: 1,
                                                                  rate: Rate(id: 1,
                                                                             star: "8.2",
                                                                             total: "166,839"),
                                                                  metascore: Metascore(id: 1,
                                                                                       score: "86",
                                                                                       critics: "82")),
                                     details: Details(id: 1,
                                                      detailsDescription: "American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966."),
                                     crewAndCasts: [
                                        CrewAndCast(id: 1,
                                                    icon: "https://m.media-amazon.com/images/M/MV5BMTg5MjY0ODg1MF5BMl5BanBnXkFtZTYwMjUzMjc0._V1_UX214_CR0,0,214,317_AL__QL50.jpg",
                                                    name: "James Mangold",
                                                    type: "Director"),
                                        CrewAndCast(id: 2,
                                                    icon: "https://image.tmdb.org/t/p/original/eLAWpp5BLbTwjj35MbGzpL0QkWv.jpg",
                                                    name: "Matt Damon",
                                                    type: "Carroll"),
                                        CrewAndCast(id: 3,
                                                    icon: "https://image.tmdb.org/t/p/original/pPXnqoGD91znz4FwQ6aKuxi6Pcy.jpg",
                                                    name: "Christian Bale",
                                                    type: "Ken Miles"),
                                        CrewAndCast(id: 4,
                                                    icon: "https://static01.nyt.com/images/2019/11/07/arts/07minutes1/merlin_160562580_735c80c2-5f10-4332-8489-f054024d17d0-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
                                                    name: "Tracy Letts",
                                                    type: "Henry Ford II"),
                                        CrewAndCast(id: 5,
                                                    icon: "https://www.refinery29.com/images/9691792.jpg?format=jpg&width=340&height=408&quality=80",
                                                    name: "Caitriona Balfe",
                                                    type: "Mollie Miles")])
        
        return model
    }
}
