//
//  LoginView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 28/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

// MARK: - Struct for LoginView
/// View for LoginView
struct LoginView: View {
    // MARK: - Variables
    @State private var emailId: String = ""
    @State private var passWord: String = ""
    @State private var alertMessageText: String = ""
    @State private var isValidEmail: Bool = true
    @State private var isValidPassword: Bool = true
    @State private var showingAlert: Bool = false

    private var viewModel = LoginViewModel()

    // MARK: - View
    /// Body for View
    var body: some View {
        VStack {
            HeaderView(icon: "logo_login",
                       title: "Welcome to MyApp",
                       subTitle: "My SwiftUI Login Page")
            Spacer()
            TextFieldView(placeholderText: "Email ID",
                          field: $emailId,
                          fieldName: "EMAIL",
                          isValidField: $isValidEmail,
                          errorMessage: $alertMessageText)
            VStack(alignment: .trailing) {
                SecureTextFieldView(placeholderText: "Password",
                                    field: $passWord,
                                    fieldName: "PASSWORD",
                                    isValidField: $isValidPassword,
                                    errorMessage: $alertMessageText)
                ForgotPasswordView(buttonTapAction: {
                    print("Forgot password tapped")
                })
            }
            Spacer()
            RoundedButtonView(buttonTapAction: {
                UIApplication.shared.endEditing()
                self.checkUserDatavalidation()
            })
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Alert"),
                  message: Text(alertMessageText),
                  dismissButton: .default(Text("Ok")))
        }
    }

    /// Func to check user entered data validation
    func checkUserDatavalidation() {
        let messageAlertType = viewModel.getAlertMessageText(email: emailId,
                                                             password: passWord)
        alertMessageText = messageAlertType.message
        /// check login error type
        if messageAlertType.errorType == .email {
            self.isValidEmail = false
        }
        if messageAlertType.errorType == .password {
            self.isValidPassword = false
        }
        if messageAlertType.errorType == .none {
            showingAlert = true
        }
    }
}

// MARK: - LoginView_Previews
/// Preview provider for LoginView
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
