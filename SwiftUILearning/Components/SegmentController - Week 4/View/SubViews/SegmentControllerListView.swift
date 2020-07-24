//
//  SegmentControllerListView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 21/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for SegmentControllerScrollView
/// View for SegmentControllerScrollView
struct SegmentControllerListView: View {
    // MARK: - Variables
    private let viewModel = SegmentControllerViewModel()

    @Environment(\.presentationMode) var presentation
    @State private var showingAlert = false
    @State var sortingIndex: Int
    @State var selectedIndex: Int
    @State var items = [SegmentControllModel]()

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack {
            /// Picker View
            Picker("Sort Contacts by", selection: $sortingIndex) {
                Text("All").tag(0)
                Text("Home").tag(1)
                Text("Away").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
                .onReceive([self.sortingIndex].publisher.first(), perform: { tag in
                    switch tag {
                    case 0:
                        self.items.sort { $0.index < $1.index }
                    case 1:
                        self.items.sort { $0.homeIndex < $1.homeIndex }
                    case 2:
                        self.items.sort { $0.awayIndex < $1.awayIndex }
                    default:
                        break
                    }
                })
            /// List View
            List {
                Section(header: TeamHeader()) {
                    ForEach(self.items, id: \.self) { item in
                        ZStack {
                            NavigationLink(destination: TeamDetailsView(item: item)) { EmptyView()}.hidden()
                            TeamListRow(item: item, sortingIndex: self.sortingIndex, buttonTapAction: { id in
                                self.selectedIndex = id
                            })
                        }
                    }
                    .padding([.top, .bottom], 10)
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle(Text("PL Teams 2019/20"), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: { self.presentation.wrappedValue.dismiss() }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
                    .imageScale(.large)
            })
                .onAppear {
                    self.items = self.viewModel.getTeamList()
            }
        }
    }
}

// MARK: - SegmentControllerListView_Previews
/// Preview provider for SegmentControllerListView
struct SegmentControllerListView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentControllerListView(sortingIndex: 0, selectedIndex: 0)
    }
}
