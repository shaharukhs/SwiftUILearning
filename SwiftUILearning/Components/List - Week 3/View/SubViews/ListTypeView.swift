//
//  ListTypeView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 13/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for ListTypeView
/// View for ListTypeView
struct ListTypeView: View {
    // MARK: - Variables
    private let viewModel = ListHomeViewModel()

    // MARK: - View
    /// Body for View
    var body: some View {
        List {
            ForEach(self.viewModel.getListHomeModel(), id: \.self) { item in
                SocialMediaListRow(icon: item.icon ?? "",
                                   title: item.title ?? "",
                                   subTitle: item.subTitle ?? "")
            }
        }
        .listStyle(PlainListStyle())
        .navigationBarTitle(Text("List"), displayMode: .inline)
    }
}

// MARK: - ListTypeView_Previews
/// Preview provider for ListTypeView
struct ListTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ListTypeView()
    }
}
