//
//  UIApplication+Extension.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 29/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import UIKit

// MARK: - UIApplication extension
extension UIApplication {
    /// Func to end editing
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
