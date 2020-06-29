//
//  ContentModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/06/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation

// MARK: - Content Model
/// Model for contentView screen
struct ContentModel: Codable, Identifiable, Hashable {
    let id: Int?
    let contentType: String?
}
