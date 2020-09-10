//
//  ContentViewModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/06/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - Class for ContentViewModel
/// ContentViewModel class object
class ContentViewModel {
    // MARK: - Variables
    /// Model object array
    let contentViewItems = [ContentModel(id: 1, contentType: ComponentType.text.rawValue),
                            ContentModel(id: 2, contentType: ComponentType.image.rawValue),
                            ContentModel(id: 3, contentType: ComponentType.list.rawValue),
                            ContentModel(id: 4, contentType: ComponentType.segmentControll.rawValue),
                            ContentModel(id: 5, contentType: ComponentType.login.rawValue),
                            ContentModel(id: 6, contentType: ComponentType.movieDetail.rawValue),
                            ContentModel(id: 7, contentType: ComponentType.movieList.rawValue),
                            ContentModel(id: 8, contentType: ComponentType.picker.rawValue),
                            ContentModel(id: 9, contentType: ComponentType.reader.rawValue)]

    // MARK: - User define methods
    /// Method to get destination view
    /// - Parameter type: Type of view component
    func getDestinationView(type: String) -> AnyView {
        guard let rowType = ComponentType(rawValue: type) else { return AnyView(EmptyView()) }
        switch rowType {
        case .text:
            return AnyView(TextSwiftUIView())
        case .image:
            return AnyView(ImageListView())
        case .list:
            return AnyView(ListHomeView())
        case .segmentControll:
            return AnyView(SegmentControllerView())
        case .login:
            return AnyView(LoginView())
        case .movieDetail:
            return AnyView(MovieDetailView(movieDetailModel: DummyMovieDetailData.model))
        case .movieList:
            return AnyView(MovieListView(viewModel: MovieListObservable()))
        case .picker:
            return AnyView(PickerListView())
        case .reader:
            return AnyView(ReaderView())
        }
    }
}
