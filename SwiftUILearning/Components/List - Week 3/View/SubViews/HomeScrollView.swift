//
//  HomeScrollView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 13/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for HomeScrollView
/// View for HomeScrollView
struct HomeScrollView: View {
    // MARK: - Variables
    private let viewModel = ListHomeViewModel()

    // MARK: - View
    /// Body for View
    var body: some View {
        ScrollView {
            ForEach(self.viewModel.getListHomeModel(), id: \.self) { item in
                SocialMediaListRow(icon: item.icon ?? "",
                                   title: item.title ?? "",
                                   subTitle: item.subTitle ?? "")
            }
        }.padding()
        .navigationBarTitle(Text("ScrollView"), displayMode: .inline)
    }
}

// MARK: - HomeScrollView_Previews
/// Preview provider for HomeScrollView
struct HomeScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScrollView()
    }
}
