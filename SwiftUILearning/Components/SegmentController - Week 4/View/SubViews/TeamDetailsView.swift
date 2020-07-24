//
//  TeamDetailsView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 23/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for TeamDetailsView
/// View for TeamDetailsView
struct TeamDetailsView: View {
    // MARK: - Variables
    let item: SegmentControllModel

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("\(item.index).")
                    .fontWeight(.bold)
                    .font(.title)
                Text(item.teamName)
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
            }
            .foregroundColor(.red)
            HStack {
                TeamDetailListView(type: "",
                                   played: "P",
                                   won: "W",
                                   draw: "D",
                                   lost: "L")
            }
            HStack {
                TeamDetailListView(type: "All",
                                   played: "\(item.all.played)",
                    won: "\(item.all.won)",
                    draw: "\(item.all.draw)",
                    lost: "\(item.all.lost)")
            }
            HStack {
                TeamDetailListView(type: "Home",
                                   played: "\(item.home.played)",
                    won: "\(item.home.won)",
                    draw: "\(item.home.draw)",
                    lost: "\(item.home.lost)")
            }
            HStack {
                TeamDetailListView(type: "Away",
                                   played: "\(item.away.played)",
                    won: "\(item.away.won)",
                    draw: "\(item.away.draw)",
                    lost: "\(item.away.lost)")
            }
            Spacer()
        }
        .padding()
    }
}

// MARK: - Struct for TeamDetailListView
/// View for TeamDetailListView
struct TeamDetailListView: View {
    // MARK: - Variables
    let type: String
    let played: String
    let won: String
    let draw: String
    let lost: String

    // MARK: - View
    /// Body for View
    var body: some View {
        HStack {
            Text(type)
                .fontWeight(.medium)
            Spacer()
            Text(played)
                .fontWeight(.medium)
                .foregroundColor(.orange)
                .frame(minWidth: ConstantConstraint.width,
                       idealWidth: ConstantConstraint.width,
                       maxWidth: ConstantConstraint.width,
                       alignment: .trailing)
            Text(won)
                .fontWeight(.medium)
                .foregroundColor(.green)
                .frame(minWidth: ConstantConstraint.width,
                       idealWidth: ConstantConstraint.width,
                       maxWidth: ConstantConstraint.width,
                       alignment: .trailing)
            Text(draw)
                .fontWeight(.medium)
                .foregroundColor(.blue)
                .frame(minWidth: ConstantConstraint.width,
                       idealWidth: ConstantConstraint.width,
                       maxWidth: ConstantConstraint.width,
                       alignment: .trailing)
            Text(lost)
                .fontWeight(.medium)
                .frame(minWidth: ConstantConstraint.width,
                       idealWidth: ConstantConstraint.width,
                       maxWidth: ConstantConstraint.width,
                       alignment: .trailing)
                .foregroundColor(.red)
            
        }
        
    }
}

// MARK: - TeamDetailsView_Previews
/// Preview provider for TeamDetailsView
struct TeamDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamDetailsView(item: SegmentControllModel(id: 0, teamName: "Liverpool", index: 1, homeIndex: 1, awayIndex: 1, all: GameRecord(id: 0, played: 38, won: 30, draw: 3, lost: 3), home: GameRecord(id: 0, played: 19, won: 17, draw: 1, lost: 0), away: GameRecord(id: 0, played: 19, won: 13, draw: 2, lost: 3)))
    }
}
