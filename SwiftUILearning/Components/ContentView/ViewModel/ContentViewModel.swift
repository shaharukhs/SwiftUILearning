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
                            ContentModel(id: 2, contentType: ComponentType.image.rawValue)]
    
    /// Method to get destination view
    /// - Parameter type: Type of view component
    func getDestinationView(type: String) -> AnyView {
        guard let rowType = ComponentType(rawValue: type) else { return AnyView(EmptyView()) }
        switch rowType {
        case .text:
            return AnyView(TextSwiftUIView())
        case .image:
            return AnyView(ImageListView())
        }
    }
}
