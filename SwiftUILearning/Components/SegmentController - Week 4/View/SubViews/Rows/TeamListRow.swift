//
//  TeamListRow.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 22/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Constant Constraint
/// Struct for Constant Constraint
struct ConstantConstraint {
    static let width: CGFloat = 25
}

// MARK: - Struct for TeamListRow
/// View for TeamListRow
struct TeamListRow: View {
    // MARK: - Variables
    let item: SegmentControllModel
    let didTapButton: ((_ type: Int) -> Void)

    @State private var name = ""
    @State private var id = 0
    @Binding private var index: String
    @Binding private var played: String
    @Binding private var win: String
    @Binding private var draw: String
    @Binding private var lost: String
    @Binding private var sortingIndex: Int

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameter accountItem: AccountItem object
    init(item: SegmentControllModel, sortingIndex: Int, buttonTapAction: @escaping ((_ type: Int) -> Void)) {
        self.didTapButton = buttonTapAction
        self._sortingIndex = .constant(sortingIndex)
        self.item = item
        _name = State(initialValue: item.teamName)
        _id = State(initialValue: item.id ?? 0)
        if sortingIndex == 0 {
            _index = .constant("\(item.index)")
            _played = .constant("\(item.all.played)")
            _win = .constant("\(item.all.won)")
            _draw = .constant("\(item.all.draw)")
            _lost = .constant("\(item.all.lost)")
        } else if sortingIndex == 1 {
            _index = .constant("\(item.homeIndex)")
            _played = .constant("\(item.home.played)")
            _win = .constant("\(item.home.won)")
            _draw = .constant("\(item.home.draw)")
            _lost = .constant("\(item.home.lost)")
        } else {
            _index = .constant("\(item.awayIndex)")
            _played = .constant("\(item.away.played)")
            _win = .constant("\(item.away.won)")
            _draw = .constant("\(item.away.draw)")
            _lost = .constant("\(item.away.lost)")
        }
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                self.didTapButton(self.id)
            }, label: {
                HStack() {
                    TeamIndexAndNameView(index: index, name: name)
                    Spacer()
                    TeamPointsDetailsView(playedGame: played, win: win, draw: draw, lost: lost)
                }
            })
        }
    }
}

// MARK: - Struct for TeamIndexAndNameView
/// View for TeamIndexAndNameView
struct TeamIndexAndNameView: View {
    // MARK: - Variables
    let index: String
    let name: String

    // MARK: - View
    /// Body for View
    var body: some View {
        HStack() {
            Text(index)
                .frame(minWidth: ConstantConstraint.width,
                       idealWidth: ConstantConstraint.width,
                       maxWidth: ConstantConstraint.width,
                       alignment: .trailing)
            Text(name)
        }
        .foregroundColor(.black)
    }
}

// MARK: - Struct for TeamPointsDetailsView
/// View for TeamPointsDetailsView
struct TeamPointsDetailsView: View {
    // MARK: - Variables
    let playedGame: String
    let win: String
    let draw: String
    let lost: String

    // MARK: - View
    /// Body for View
    var body: some View {
        HStack() {
            PointBoxView(point: playedGame)
                .foregroundColor(.orange)
            PointBoxView(point: win)
                .foregroundColor(.green)
            PointBoxView(point: draw)
                .foregroundColor(.blue)
            PointBoxView(point: lost)
                .foregroundColor(.red)
        }
    }
}

// MARK: - Struct for TeamPointsDetailsView
/// View for TeamPointsDetailsView
struct PointBoxView: View {
    // MARK: - Variables
    let point: String

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack {
            Text(point).font(.body)
        }
        .frame(minWidth: ConstantConstraint.width,
               idealWidth: ConstantConstraint.width,
               maxWidth: ConstantConstraint.width,
               alignment: .leading)
    }
}

// MARK: - Struct for TeamPointsDetailsView
/// View for TeamPointsDetailsView
struct TeamHeader: View {
    // MARK: - View
    /// Body for View
    var body: some View {
        HStack(spacing: 20) {
            TeamIndexAndNameView(index: "#", name: "Teams")
            Spacer()
            TeamPointsDetailsView(playedGame: "P", win: "W", draw: "D", lost: "L")
        }
        .padding([.top, .bottom], 10)
    }
}

// MARK: - TeamListRow_Previews
/// Preview provider for TeamListRow
struct TeamListRow_Previews: PreviewProvider {
    static var previews: some View {
        TeamListRow(item: SegmentControllModel(id: 0, teamName: "Liverpool", index: 1, homeIndex: 1, awayIndex: 1, all: GameRecord(id: 0, played: 38, won: 30, draw: 3, lost: 3), home: GameRecord(id: 0, played: 19, won: 17, draw: 1, lost: 0), away: GameRecord(id: 0, played: 19, won: 13, draw: 2, lost: 3)), sortingIndex: 0, buttonTapAction: { _ in })
    }
}
