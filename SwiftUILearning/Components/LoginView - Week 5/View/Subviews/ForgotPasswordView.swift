//
//  ForgotPasswordView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for ForgotPasswordView
/// View for ForgotPasswordView
struct ForgotPasswordView: View {
    // MARK: - Variables
    let didTapButton: (() -> Void)

    // MARK: - Initializer
    /// Intializer for the view
    /// - Parameters:
    ///   - buttonTapAction: button action closure
    init(buttonTapAction: @escaping (() -> Void)) {
        self.didTapButton = buttonTapAction
    }

    // MARK: - View
    /// Body for View
    var body: some View {
        Button(action: {
            self.didTapButton()
        }) {
            Text("Forgot Password")
                .font(.custom(CustomFont.robotoRegular, size: 14))
                .font(.subheadline)
                .foregroundColor(.green)
        }
        .padding([.leading, .trailing])
    }
}

// MARK: - ForgotPasswordView_Previews
/// Preview provider for ForgotPasswordView
struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(buttonTapAction: { })
    }
}
