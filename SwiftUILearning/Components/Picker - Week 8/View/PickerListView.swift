//
//  PickerListView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 05/09/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for PickerListView
/// View for PickerListView
struct PickerListView: View {
    // MARK: - Variables
    /// Variable for Date Formatter
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }

    /// Variable for Date and Time Formatter
    private var dateAndTimeFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }

    // MARK: - State
    /// Variable for suggested topping state
    @State private var suggestedTopping: Topping = .cookies

    /// Variable for suggested color state
    @State private var suggestedColor: Color = ColorPicker.red.color

    /// Variable for birthDate state
    @State private var birthDate = Date()

    /// Variable for date and time state
    @State private var dateAndTime = Date()

    // MARK: - View
    /// Body for View
    var body: some View {
        List {
            /// Color picker
            Section(header: Text("Colors picker using segmented style")) {
                Picker("Color", selection: $suggestedColor) {
                    ForEach(ColorPicker.allCases) { colorTitle in
                        Text(colorTitle.rawValue.capitalized)
                            .tag(colorTitle.color)
                    }
                }
                HStack {
                    Text("Selected color: ")
                    Text("\(suggestedColor.description.capitalized)")
                        .foregroundColor(suggestedColor)
                }
                
            }
            .pickerStyle(SegmentedPickerStyle())

            /// Flavor picker
            Section(header: Text("Flavor picker using list view")) {
                Picker("Suggest a topping for:", selection: $suggestedTopping) {
                    ForEach(Flavor.allCases) { flavor in
                        Text(flavor.rawValue.capitalized)
                            .tag(flavor.suggestedTopping)
                    }
                }
                HStack {
                    Text("Suggested topping: ")
                    Text("\(suggestedTopping.rawValue.capitalized)")
                        .foregroundColor(suggestedColor)
                }
            }

            /// Date Picker
            Section(header: Text("Date Picker")) {
                DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                    Text("Select a date")
                }
                HStack {
                    Text("Date is: ")
                    Text("\(birthDate, formatter: dateFormatter)")
                        .foregroundColor(suggestedColor)
                }
                
            }

            /// Date and Time Picker
            Section(header: Text("Date and Time Picker")) {
                DatePicker(selection: $dateAndTime, displayedComponents: [.date, .hourAndMinute]) {
                    Text("Select a date")
                }
                VStack(alignment: .leading) {
                    Text("Date and Time is: ")
                    Text("\(dateAndTime, formatter: dateAndTimeFormatter)")
                        .foregroundColor(suggestedColor)
                }
            }
        }
        .navigationBarTitle(Text("Picker List"), displayMode: .inline)
    }
}

// MARK: - PickerListView_Previews
/// Preview provider for PickerListView
struct PickerListView_Previews: PreviewProvider {
    static var previews: some View {
        PickerListView()
    }
}
