//
//  ReaderViewModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 07/09/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

class ReaderViewModel {
    // MARK: - Variables
    /// Model object array
    let contentViewItems = [ContentModel(id: 1, contentType: ReaderEnum.geometry.rawValue),
                            ContentModel(id: 2, contentType: ReaderEnum.storage.rawValue)]

    // MARK: - User define methods
    /// Method to get destination view
    /// - Parameter type: Type of view component
    func getDestinationView(type: String) -> AnyView {
        guard let rowType = ReaderEnum(rawValue: type) else { return AnyView(EmptyView()) }
        switch rowType {
        case .geometry:
            return AnyView(GeometryView())
        case .storage:
            if #available(iOS 14.0, *) {
                return AnyView(StorageView())
            } else {
                return AnyView(EmptyView())
            }
        }
    }
}
