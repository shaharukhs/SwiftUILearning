//
//  PickerEnums.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 05/09/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - Enum
/// Enum for Flavor
enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry

    var id: String { self.rawValue }
}

/// Enum for Topping
enum Topping: String, CaseIterable, Identifiable {
    case nuts
    case cookies
    case blueberries

    var id: String { self.rawValue }
}

/// Enum for ColorPicker
enum ColorPicker: String, CaseIterable, Identifiable {
    case red
    case green
    case blue
    case yellow
    
    var id: String { self.rawValue }
}

// MARK: - extension
/// extension for ColorPicker
extension ColorPicker {
    var color: Color {
        switch self {
        case .red:
            return .red
        case .green:
            return .green
        case .blue:
            return .blue
        case .yellow:
            return .yellow
        }
    }
}

/// extension for Flavor
extension Flavor {
    var suggestedTopping: Topping {
        switch self {
        case .chocolate: return .nuts
        case .vanilla: return .cookies
        case .strawberry: return .blueberries
        }
    }
}

