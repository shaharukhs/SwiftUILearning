//
//  ListHomeModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 13/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation

// MARK: - ListHome Model
/// Model for listHome screen
struct ListHomeModel: Codable, Identifiable, Hashable {
    let id: Int?
    let title: String?
    let subTitle: String?
    let icon: String?
}
