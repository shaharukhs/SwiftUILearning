//
//  SegmentControllerScrollView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 21/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for SegmentControllerScrollView
/// View for SegmentControllerScrollView
struct SegmentControllerScrollView: View {
    // MARK: - Variables
    @Environment(\.presentationMode) var presentation
    @State private var showingAlert = false
    @State var sortingIndex: Int
    @State var selectedIndex: Int
    @State var items = [SegmentControllModel]()

    private let viewModel = SegmentControllerViewModel()

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
            /// ScrollView
            ScrollView {
                Section(header: TeamHeader()) {
                    ForEach(self.items, id: \.self) { item in
                        TeamListRow(item: item, sortingIndex: self.sortingIndex, buttonTapAction: { id in
                            self.selectedIndex = id
                            self.showingAlert = true
                        })
                    }
                    .padding([.top, .bottom], 10)
                }
            }
                /// Alert
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("PL Team 2019/20"), message: Text("Selected team - \(self.items[selectedIndex].teamName)"), dismissButton: .default(Text("Got it!")))
            }
            .padding([.leading, .trailing])
            .navigationBarTitle(Text("Team Standing"), displayMode: .inline)
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

// MARK: - SegmentControllerScrollView_Previews
/// Preview provider for SegmentControllerScrollView
struct SegmentControllerScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentControllerScrollView(sortingIndex: 0, selectedIndex: 0)
    }
}
