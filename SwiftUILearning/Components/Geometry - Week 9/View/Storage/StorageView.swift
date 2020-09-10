//
//  StorageView.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 07/09/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import SwiftUI

struct StorageView: View {
    var body: some View {
        VStack {
            if #available(iOS 14.0, *) {
                AppStorageView()
            } else {
                Text("Required iOS 14 or higher version")
            }
        }
    }
}

@available(iOS 14.0, *)
struct AppStorageView: View {

    @AppStorage("username") var username: String = "Bob"
    @AppStorage("secretKey", store: UserDefaults(suiteName: "group.com.shahrukh.secured")) var secretKey: String = "0x600001604620"

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Welcome: \(username)")
            Text("Secret Key: \(secretKey)")
            Button("Change Secret") {
                self.secretKey = "\(UUID())"
            }
        }.navigationTitle("App Storage")
    }
}

@available(iOS 14.0, *)
struct SceneStorageView: View {
    @SceneStorage("text") var text = ""

    var body: some View {
        NavigationView {
            TextEditor(text: $text)
                .background(Color.gray)
                .opacity(0.5)
        }
    }
}

struct StorageView_Previews: PreviewProvider {
    static var previews: some View {
        StorageView()
    }
}
