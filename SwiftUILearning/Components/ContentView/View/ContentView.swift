//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/06/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for ContentView
/// View for ContentView
struct ContentView: View {
    // MARK: - Variables
    private let viewModel = ContentViewModel()
    
    // MARK: - View
    /// Body for Content View
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.contentViewItems, id: \.self) { item in
                    NavigationLink(destination: self.viewModel.getDestinationView(type: item.contentType ?? "")) {
                        Text("\(item.contentType ?? "")")
                    }
                }
            }
            .navigationBarTitle("SwiftUI Learning")
        }
    }
}

// MARK: - ContentView_Previews
/// Preview provider for ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
