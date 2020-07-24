//
//  SegmentControllerViewModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 21/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - Class for SegmentControllerViewModel
/// SegmentControllerViewModel class object
class SegmentControllerViewModel {
    // MARK: - Variables
    /// Model object array
    let contentViewItems = [ContentModel(id: 1, contentType: ListType.list.rawValue),
                            ContentModel(id: 2, contentType: ListType.scrollView.rawValue)]

    /// Method to get destination view
    /// - Parameter type: Type of view component
    func getDestinationView(type: String) -> AnyView {
        guard let rowType = ListType(rawValue: type) else { return AnyView(EmptyView()) }
        switch rowType {
        case .list:
            return AnyView(SegmentControllerListView(sortingIndex: 0, selectedIndex: 0))
        case .scrollView:
            return AnyView(SegmentControllerScrollView(sortingIndex: 0, selectedIndex: 0))
        }
    }

    /// Func to get team list object
    func getTeamList() -> [SegmentControllModel] {
        let team1: SegmentControllModel = SegmentControllModel(id: 0,
                                                               teamName: "Liverpool",
                                                               index: 1,
                                                               homeIndex: 1,
                                                               awayIndex: 1,
                                                               all: GameRecord(id: 0, played: 38, won: 31, draw: 3, lost: 3),
                                                               home: GameRecord(id: 0, played: 19, won: 18, draw: 1, lost: 0),
                                                               away: GameRecord(id: 0, played: 19, won: 14, draw: 2, lost: 3))
        let team2: SegmentControllModel = SegmentControllModel(id: 1,
                                                               teamName: "Manchester City",
                                                               index: 2,
                                                               homeIndex: 2,
                                                               awayIndex: 2,
                                                               all: GameRecord(id: 0, played: 38, won: 25, draw: 3, lost: 9),
                                                               home: GameRecord(id: 0, played: 19, won: 14, draw: 2, lost: 2),
                                                               away: GameRecord(id: 0, played: 19, won: 11, draw: 1, lost: 7))
        let team3: SegmentControllModel = SegmentControllModel(id: 2,
                                                               teamName: "Chelsea",
                                                               index: 3,
                                                               homeIndex: 6,
                                                               awayIndex: 4,
                                                               all: GameRecord(id: 0, played: 38, won: 19, draw: 6, lost: 11),
                                                               home: GameRecord(id: 0, played: 19, won: 10, draw: 3, lost: 5),
                                                               away: GameRecord(id: 0, played: 19, won: 9, draw: 3, lost: 6))
        let team4: SegmentControllModel = SegmentControllModel(id: 3,
                                                               teamName: "Leicester City",
                                                               index: 4,
                                                               homeIndex: 4,
                                                               awayIndex: 8,
                                                               all: GameRecord(id: 0, played: 38, won: 18, draw: 8, lost: 11),
                                                               home: GameRecord(id: 0, played: 19, won: 11, draw: 4, lost: 3),
                                                               away: GameRecord(id: 0, played: 19, won: 7, draw: 4, lost: 8))
        let team5: SegmentControllModel = SegmentControllModel(id: 4,
                                                               teamName: "Manchester United",
                                                               index: 5,
                                                               homeIndex: 5,
                                                               awayIndex: 6,
                                                               all: GameRecord(id: 0, played: 38, won: 17, draw: 12, lost: 8),
                                                               home: GameRecord(id: 0, played: 19, won: 10, draw: 7, lost: 2),
                                                               away: GameRecord(id: 0, played: 19, won: 7, draw: 5, lost: 6))
        let team6: SegmentControllModel = SegmentControllModel(id: 5,
                                                               teamName: "Wolves",
                                                               index: 6,
                                                               homeIndex: 9,
                                                               awayIndex: 5,
                                                               all: GameRecord(id: 0, played: 38, won: 15, draw: 14, lost: 8),
                                                               home: GameRecord(id: 0, played: 19, won: 8, draw: 7, lost: 4),
                                                               away: GameRecord(id: 0, played: 19, won: 7, draw: 7, lost: 4))
        let team7: SegmentControllModel = SegmentControllModel(id: 6,
                                                               teamName: "Tottenham",
                                                               index: 7,
                                                               homeIndex: 3,
                                                               awayIndex: 12,
                                                               all: GameRecord(id: 0, played: 38, won: 16, draw: 10, lost: 11),
                                                               home: GameRecord(id: 0, played: 19, won: 12, draw: 3, lost: 4),
                                                               away: GameRecord(id: 0, played: 19, won: 4, draw: 7, lost: 7))
        let team8: SegmentControllModel = SegmentControllModel(id: 7,
                                                               teamName: "Sheffield Utd",
                                                               index: 8,
                                                               homeIndex: 8,
                                                               awayIndex: 9,
                                                               all: GameRecord(id: 0, played: 38, won: 14, draw: 12, lost: 11),
                                                               home: GameRecord(id: 0, played: 19, won: 10, draw: 3, lost: 6),
                                                               away: GameRecord(id: 0, played: 19, won: 4, draw: 9, lost: 5))
        let team9: SegmentControllModel = SegmentControllModel(id: 8,
                                                               teamName: "Burnley",
                                                               index: 9,
                                                               homeIndex: 11,
                                                               awayIndex: 7,
                                                               all: GameRecord(id: 0, played: 38, won: 15, draw: 9, lost: 13),
                                                               home: GameRecord(id: 0, played: 19, won: 8, draw: 4, lost: 6),
                                                               away: GameRecord(id: 0, played: 19, won: 7, draw: 5, lost: 7))
        let team10: SegmentControllModel = SegmentControllModel(id: 9,
                                                                teamName: "Arsenal",
                                                                index: 10,
                                                                homeIndex: 7,
                                                                awayIndex: 10,
                                                                all: GameRecord(id: 0, played: 38, won: 13, draw: 14, lost: 10),
                                                                home: GameRecord(id: 0, played: 19, won: 9, draw: 6, lost: 3),
                                                                away: GameRecord(id: 0, played: 19, won: 4, draw: 8, lost: 7))
        let team11: SegmentControllModel = SegmentControllModel(id: 10,
                                                                teamName: "Everton",
                                                                index: 11,
                                                                homeIndex: 10,
                                                                awayIndex: 13,
                                                                all: GameRecord(id: 0, played: 38, won: 13, draw: 10, lost: 14),
                                                                home: GameRecord(id: 0, played: 19, won: 8, draw: 7, lost: 3),
                                                                away: GameRecord(id: 0, played: 19, won: 5, draw: 3, lost: 11))
        let team12: SegmentControllModel = SegmentControllModel(id: 11,
                                                                teamName: "Southampton",
                                                                index: 12,
                                                                homeIndex: 19,
                                                                awayIndex: 3,
                                                                all: GameRecord(id: 0, played: 38, won: 14, draw: 7, lost: 16),
                                                                home: GameRecord(id: 0, played: 19, won: 5, draw: 3, lost: 10),
                                                                away: GameRecord(id: 0, played: 19, won: 9, draw: 4, lost: 6))
        let team13: SegmentControllModel = SegmentControllModel(id: 12,
                                                                teamName: "Newcastle Utd",
                                                                index: 13,
                                                                homeIndex: 12,
                                                                awayIndex: 14,
                                                                all: GameRecord(id: 0, played: 38, won: 11, draw: 11, lost: 15),
                                                                home: GameRecord(id: 0, played: 19, won: 6, draw: 8, lost: 4),
                                                                away: GameRecord(id: 0, played: 19, won: 5, draw: 3, lost: 11))
        let team14: SegmentControllModel = SegmentControllModel(id: 13,
                                                                teamName: "Crystal Palace",
                                                                index: 14,
                                                                homeIndex: 15,
                                                                awayIndex: 11,
                                                                all: GameRecord(id: 0, played: 38, won: 11, draw: 9, lost: 17),
                                                                home: GameRecord(id: 0, played: 19, won: 6, draw: 4, lost: 8),
                                                                away: GameRecord(id: 0, played: 19, won: 5, draw: 5, lost: 9))
        let team15: SegmentControllModel = SegmentControllModel(id: 14,
                                                                teamName: "Brighton",
                                                                index: 15,
                                                                homeIndex: 16,
                                                                awayIndex: 15,
                                                                all: GameRecord(id: 0, played: 38, won: 8, draw: 14, lost: 15),
                                                                home: GameRecord(id: 0, played: 19, won: 5, draw: 7, lost: 7),
                                                                away: GameRecord(id: 0, played: 19, won: 3, draw: 7, lost: 8))
        let team16: SegmentControllModel = SegmentControllModel(id: 15,
                                                                teamName: "West Ham United",
                                                                index: 16,
                                                                homeIndex: 17,
                                                                awayIndex: 16,
                                                                all: GameRecord(id: 0, played: 38, won: 10, draw: 7, lost: 19),
                                                                home: GameRecord(id: 0, played: 19, won: 6, draw: 3, lost: 9),
                                                                away: GameRecord(id: 0, played: 19, won: 4, draw: 4, lost: 10))
        let team17: SegmentControllModel = SegmentControllModel(id: 16,
                                                                teamName: "Aston Villa",
                                                                index: 17,
                                                                homeIndex: 14,
                                                                awayIndex: 17,
                                                                all: GameRecord(id: 0, played: 38, won: 9, draw: 7, lost: 21),
                                                                home: GameRecord(id: 0, played: 19, won: 7, draw: 3, lost: 9),
                                                                away: GameRecord(id: 0, played: 19, won: 2, draw: 4, lost: 12))
        let team18: SegmentControllModel = SegmentControllModel(id: 17,
                                                                teamName: "Watford",
                                                                index: 18,
                                                                homeIndex: 13,
                                                                awayIndex: 19,
                                                                all: GameRecord(id: 0, played: 38, won: 8, draw: 10, lost: 19),
                                                                home: GameRecord(id: 0, played: 19, won: 6, draw: 6, lost: 7),
                                                                away: GameRecord(id: 0, played: 19, won: 2, draw: 4, lost: 12))
        let team19: SegmentControllModel = SegmentControllModel(id: 18,
                                                                teamName: "Bournemouth",
                                                                index: 19,
                                                                homeIndex: 18,
                                                                awayIndex: 18,
                                                                all: GameRecord(id: 0, played: 38, won: 8, draw: 7, lost: 22),
                                                                home: GameRecord(id: 0, played: 19, won: 5, draw: 6, lost: 8),
                                                                away: GameRecord(id: 0, played: 19, won: 3, draw: 1, lost: 14))
        let team20: SegmentControllModel = SegmentControllModel(id: 19,
                                                                teamName: "Norwich City",
                                                                index: 20,
                                                                homeIndex: 20,
                                                                awayIndex: 20,
                                                                all: GameRecord(id: 0, played: 38, won: 5, draw: 6, lost: 26),
                                                                home: GameRecord(id: 0, played: 19, won: 4, draw: 3, lost: 12),
                                                                away: GameRecord(id: 0, played: 19, won: 1, draw: 3, lost: 14))
        
        return [team1, team2, team3, team4, team5, team6, team7, team8, team9, team10, team11, team12, team13, team14, team15, team16, team17, team18, team19, team20]
    }
}
