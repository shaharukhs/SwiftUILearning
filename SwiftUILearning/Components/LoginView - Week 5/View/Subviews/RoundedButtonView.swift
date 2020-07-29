//
//  RoundedButtonView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for RoundedButtonView
/// View for RoundedButtonView
struct RoundedButtonView: View {
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
        VStack {
            Button(action: {
                self.buttonAction()
            }) {
                Text("Login")
                    .font(.custom(CustomFont.robotoBlack, size: 16))
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
            }
            .background(Color.primaryLoginColor)
            .shadow(color: Color.blue, radius: 20, y: 5)
            .cornerRadius(10)
        }
        .padding([.leading, .trailing])
    }

    /// Func to get button action
    func buttonAction() {
        self.didTapButton()
    }
}

// MARK: - RoundedButtonView_Previews
/// Preview provider for RoundedButtonView
struct RoundedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButtonView(buttonTapAction: { })
    }
}
