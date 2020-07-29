//
//  TextFieldView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for TextFieldView
/// View for TextFieldView
struct TextFieldView: View {
    // MARK: - Variables
    @Binding private var field: String
    @Binding private var errorMessage: String
    @Binding private var isValidField: Bool
    private var placeholderText: String = ""
    private var fieldName: String = ""

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameters:
    ///   - placeholderText: placeholder text for textField
    ///   - field: text for textField
    ///   - fieldName: textField name
    ///   - isValidField: bool value to check validation of text
    ///   - errorMessage: error message if any validation flag true
    init(placeholderText: String, field: Binding<String>, fieldName: String, isValidField: Binding<Bool>, errorMessage: Binding<String>) {
        self._field = field
        self.placeholderText = placeholderText
        self.fieldName = fieldName
        self._isValidField = isValidField
        self._errorMessage = errorMessage
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack(alignment: .trailing) {
            VStack(alignment: .leading, spacing: 5) {
                Text(fieldName)
                    .font(.custom(CustomFont.robotoMedium, size: 18))
                VStack(spacing: 0) {
                    TextField(placeholderText, text: $field, onEditingChanged: { (_) in
                        self.isValidField = true
                    })
                        .font(.custom(CustomFont.robotoRegular, size: 16))
                        .padding([.bottom, .top])
                        .background(Color(.systemGroupedBackground))
                        .autocapitalization(.none)
                    Divider()
                }
            }
            if !isValidField {
                Text(errorMessage)
                    .font(.custom(CustomFont.robotoMedium, size: 12))
                    .foregroundColor(.red)
            }
        }
        .padding([.leading, .trailing])
    }
}

// MARK: - TextFieldView_Previews
/// Preview provider for TextFieldView
struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(placeholderText: "Placeholder text",
                      field: .constant(""),
                      fieldName: "Field name",
                      isValidField: .constant(false),
                      errorMessage: .constant("Error message"))
    }
}
