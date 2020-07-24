//
//  SegmentControllerView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 21/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for SegmentControllerView
/// View for SegmentControllerView
struct SegmentControllerView: View {
    // MARK: - Variables
    private let viewModel = SegmentControllerViewModel()
    
    // MARK: - View
    /// Body for View
    var body: some View {
        List {
            ForEach(self.viewModel.contentViewItems, id: \.self) { item in
                NavigationLink(destination: self.viewModel.getDestinationView(type: item.contentType ?? "")) {
                    Text("\(item.contentType ?? "") - Segment Controller")
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle(Text("Segment Controll"), displayMode: .inline)
    }
}

// MARK: - SegmentControllerView_Previews
/// Preview provider for SegmentControllerView
struct SegmentControllerView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentControllerView()
    }
}
