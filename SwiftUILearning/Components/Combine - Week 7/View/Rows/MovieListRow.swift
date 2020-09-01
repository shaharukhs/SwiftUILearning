//
//  MovieListRow.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 01/09/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

// MARK: - Struct for MovieListRow
/// View for MovieListRow
struct MovieListRow: View {
    // MARK: - Variables
    let cellData: PopularMovie
    @State var isAnimating: Bool = true

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack(alignment: .leading,
               spacing: 3) {
                WebImage(url: URL(string: cellData.poster_path ?? ""),
                         options: [.progressiveLoad, .delayPlaceholder],
                         isAnimating: $isAnimating)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 40,
                           height: UIScreen.main.bounds.width/2)
                    .cornerRadius(5)

                Text(cellData.title ?? "")
                    .font(.headline)

                Text(cellData.overview ?? "")
                    .font(.subheadline)
        }
    }
}
