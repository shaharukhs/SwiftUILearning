//
//  ListHomeView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 13/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for ListHomeView
/// View for ListHomeView
struct ListHomeView: View {
    // MARK: - Variables
    private let viewModel = ListHomeViewModel()

    // MARK: - View
    /// Body for View
    var body: some View {
        List {
            ForEach(self.viewModel.contentViewItems, id: \.self) { item in
                NavigationLink(destination: self.viewModel.getDestinationView(type: item.contentType ?? "")) {
                    Text("\(item.contentType ?? "")")
                }
            }
        }.listStyle(GroupedListStyle())
            .navigationBarTitle("SwiftUI List", displayMode: .inline)
    }
}

// MARK: - ListHomeView_Previews
/// Preview provider for ListHomeView
struct ListHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ListHomeView()
    }
}
