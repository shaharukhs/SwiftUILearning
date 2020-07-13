//
//  ImageListView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 06/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for ImageListView
/// View for ImageListView
struct ImageListView: View {
    // MARK: - Variables
    private let viewModel = ImageListViewModel()

    // MARK: - View
    /// Body for Content View
    var body: some View {
        List {
            ForEach(self.viewModel.contentViewItems, id: \.self) { item in
                NavigationLink(destination: self.viewModel.getDestinationView(type: item.contentType ?? "")) {
                    Text("\(item.contentType ?? "")")
                }
            }
        }.listStyle(GroupedListStyle())
         .navigationBarTitle("SwiftUI Images")
    }
}

// MARK: - ImageListView_Previews
/// Preview provider for ImageListView
struct ImageListView_Previews: PreviewProvider {
    static var previews: some View {
        ImageListView()
    }
}
