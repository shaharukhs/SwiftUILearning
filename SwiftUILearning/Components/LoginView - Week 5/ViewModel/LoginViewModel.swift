//
//  LoginViewModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation

class LoginViewModel {
    func getAlertMessageText(email: String, password: String) -> (message: String, errorType: LoginError) {
        guard email.count > 0 else {
            return ("Please enter Email Id", .email)
        }
        guard  email.isValidEmail() else {
            return ("Email ID is not valid", .email)
        }
        guard password.count > 0 else {
            return ("Please enter password", .password)
        }
        guard password.isValidPassword() else {
            return ("Password is not valid", .password)
        }
        return ("Login Success", .none)
    }
}
