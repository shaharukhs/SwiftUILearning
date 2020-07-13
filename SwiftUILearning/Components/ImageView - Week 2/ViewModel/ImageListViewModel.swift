//
//  ImageListViewModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 06/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - Class for ImageListViewModel
/// ImageListViewModel class object
class ImageListViewModel {
    // MARK: - Variables
    /// Model object array
    let contentViewItems = [ContentModel(id: 1, contentType: ImageListType.imageView.rawValue),
                            ContentModel(id: 2, contentType: ImageListType.imageAndTextView.rawValue)]


    /// Method to get destination view
    /// - Parameter type: Type of view component
    func getDestinationView(type: String) -> AnyView {
        guard let rowType = ImageListType(rawValue: type) else { return AnyView(EmptyView()) }
        switch rowType {
        case .imageView:
            return AnyView(ImageRowView())
        case .imageAndTextView:
            return AnyView(TextAndImageView())
        }
    }
}
