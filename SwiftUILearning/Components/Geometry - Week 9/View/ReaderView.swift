//
//  ReaderView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 07/09/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

struct ReaderView: View {
    // MARK: - Variables
    private let viewModel = ReaderViewModel()
    
    // MARK: - View
    /// Body for Content View
    var body: some View {
        List {
            ForEach(viewModel.contentViewItems, id: \.self) { item in
                NavigationLink(destination: self.viewModel.getDestinationView(type: item.contentType ?? "")) {
                    Text("\(item.contentType ?? "")")
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct ReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ReaderView()
    }
}
