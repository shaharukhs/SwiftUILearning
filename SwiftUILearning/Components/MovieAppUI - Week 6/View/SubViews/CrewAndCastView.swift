//
//  CrewAndCastView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 03/08/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for CrewAndCastView
/// View for CrewAndCastView
struct CrewAndCastView: View {
    // MARK: - Variables
    let crewAndCastItems: [CrewAndCast]

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameter crewAndCastItems: CrewAndCast element
    init(crewAndCastItems: [CrewAndCast]) {
        self.crewAndCastItems = crewAndCastItems
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Cast & Crew")
                .font(.custom(CustomFont.robotoBold, size: 26))
            CrewAndCastScrollView(crewAndCastItems: self.crewAndCastItems)
        }
        .padding()
    }
}

// MARK: - Struct for CrewAndCastScrollView
/// View for CrewAndCastScrollView
struct CrewAndCastScrollView: View {
    // MARK: - Variables
    let crewAndCastItems: [CrewAndCast]

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameter crewAndCastItems: CrewAndCast element
    init(crewAndCastItems: [CrewAndCast]) {
        self.crewAndCastItems = crewAndCastItems
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(self.crewAndCastItems, id: \.self) { crew in
                    VStack {
                        CrewDetailsView(crewAndCastItem: crew)
                    }
                    .background(Color.white)
                }
            }
            .padding([.top, .bottom])
        }
    }
}

// MARK: - Struct for CrewDetailsView
/// View for CrewDetailsView
struct CrewDetailsView: View {
    // MARK: - Variables
    let crewAndCastItem: CrewAndCast
    @Environment(\.imageCache) var cache: ImageCache

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameter crewAndCastItem: CrewAndCast object
    init(crewAndCastItem: CrewAndCast) {
        self.crewAndCastItem = crewAndCastItem
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack {
            AsyncImage(
                url:URL(string: crewAndCastItem.icon)!,
                cache: self.cache,
                placeholder: Text("Loading ..."),
                configuration: { $0.resizable() })
                .frame(width: 90, height: 90, alignment: .center)
                .clipShape(Circle())
            Text(crewAndCastItem.name)
                .font(.custom(CustomFont.robotoMedium, size: 14))
                .fixedSize(horizontal: false, vertical: true)
                .lineLimit(nil)
                .frame(maxWidth: 60, alignment: .center)
                .multilineTextAlignment(.center)
            Text(crewAndCastItem.type)
            .font(.custom(CustomFont.robotoRegular, size: 13))
            .foregroundColor(Color.gray)
        }
    }
}

// MARK: - CrewAndCastView_Previews
/// Preview provider for CrewAndCastView
struct CrewAndCastView_Previews: PreviewProvider {
    static var previews: some View {
        CrewAndCastView(crewAndCastItems: DummyMovieDetailData.model.crewAndCasts)
    }
}
