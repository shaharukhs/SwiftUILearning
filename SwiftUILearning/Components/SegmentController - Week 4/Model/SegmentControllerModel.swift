//
//  SegmentControllerModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 21/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation

// MARK: - SegmentControll Model
/// Model for segment controller screen
struct SegmentControllModel: Codable, Identifiable, Hashable {
    let id: Int?
    let teamName: String
    let index: Int
    let homeIndex: Int
    let awayIndex: Int
    let all: GameRecord
    let home: GameRecord
    let away: GameRecord
}

struct GameRecord: Codable, Identifiable, Hashable {
    let id: Int
    let played: Int
    let won: Int
    let draw: Int
    let lost: Int
}
