//
//  Webservice.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 01/09/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation
import Combine

// MARK: - MovieDB struct
struct MovieDB {
    static let apiClient = APIClient()
    static let baseUrl = URL(string: "https://api.themoviedb.org/3/")!
    static let imageBaseUrl = "https://image.tmdb.org/t/p/w500/"
}

// MARK: - Struct for APIClient
struct APIClient {

    /// Struct for Response object
    struct Response<T> {
        let value: T
        let response: URLResponse
    }

    /// Func to run APIClient
    /// - Parameter request: URLRequest
    /// - Returns: Generic Response with Model Object and Error
    func run<T: Decodable>(_ request: URLRequest) -> AnyPublisher<Response<T>, Error> {
        return URLSession.shared
            .dataTaskPublisher(for: request)
            .tryMap { result -> Response<T> in
                let value = try JSONDecoder().decode(T.self, from: result.data)
                return Response(value: value, response: result.response)
        }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
}

// MAEK: - extension for MovieDB
extension MovieDB {

    /// Func to API request
    /// - Parameter path: path for component
    /// - Returns: MovieRoot object and Error
    static func request(_ path: APIPath) -> AnyPublisher<MovieRoot, Error> {
        guard var components = URLComponents(url: baseUrl.appendingPathComponent(path.rawValue), resolvingAgainstBaseURL: true)
            else { fatalError("Couldn't create URLComponents") }
        components.queryItems = [URLQueryItem(name: "api_key", value: "API_Key")]

        let request = URLRequest(url: components.url!)

        return apiClient.run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
}
