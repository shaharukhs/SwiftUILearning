//
//  ListHomeViewModel.swift
//  SwiftUILearning
//
//  Created by Shikalgar, Shahrukh on 13/07/20.
//  Copyright © 2020 Shahrukh Shikalgar. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - Class for ListHomeViewModel
/// ListHomeViewModel class object
class ListHomeViewModel {
    // MARK: - Variables
    /// Model object array
    let contentViewItems = [ContentModel(id: 1, contentType: ListType.list.rawValue),
                            ContentModel(id: 2, contentType: ListType.scrollView.rawValue)]

    // MARK: - User define functions
    /// Fucc to get List Home Model
    /// - Returns: array of ListHomeModel object
    func getListHomeModel() -> [ListHomeModel] {
        return [ListHomeModel(id: 1,
                              title: "Facebook",
                              subTitle: "This is easily the largest social networking site in the world and one of the most widely used. And, Facebook was perhaps the first that surpassed the landmark of 1 billion user accounts.",
                              icon: "facebook"),
                ListHomeModel(id: 2,
                              title: "WhatsApp",
                              subTitle: "Despite having been acquired by Facebook in 2014, this instant messaging platform exists as an independent entity.",
                              icon: "whatsapp"),
                ListHomeModel(id: 3,
                              title: "Instagram",
                              subTitle: "Instagram was launched as a unique social networking platform that was completely based on sharing photos and videos. This photo sharing social networking app thus enables you to capture the best moments of your life, with your phone’s camera or any other camera, and convert them into works of art.",
                              icon: "instagram"),
                ListHomeModel(id: 4,
                              title: "Twitter",
                              subTitle: "This social networking site enables you to post short text messages (called tweets), containing a limited number of characters (up to 280), to convey your message to the world. With the growing craze for online shopping, Twitter also makes it possible to promote your businesses and even shop directly through tweets.",
                              icon: "twitter"),
                ListHomeModel(id: 5,
                              title: "Skype",
                              subTitle: "Skype, owned by Microsoft, is one of the most popular communication-based social networking platforms. It allows you to connect with people through voice calls, video calls (using a webcam) and text messaging. You can even conduct group conference calls. And, the best part is that Skype-to-Skype calls are free and can be used to communicate with anyone, located in any part of the world, over the internet.",
                              icon: "skype"),
                ListHomeModel(id: 6,
                              title: "Snapchat",
                              subTitle: "This is an image messaging social platform that enables you to chat with friends by using pictures. It allows you to explore news and even check out live stories that are happening around the world.",
                              icon: "snapchat"),
                ListHomeModel(id: 7,
                              title: "Pinterest",
                              subTitle: "This is a photo sharing and visual bookmarking social media site or app that enables you to find new ideas for your projects and save them. So, you can do DIY tasks or home improvement projects, plan your travel agenda and so on by using Pinterest.",
                              icon: "pinterest"),
                ListHomeModel(id: 8,
                              title: "LinkedIn",
                              subTitle: "LinkedIn is easily one of the most popular professional social networking sites or apps and is available in over 20 languages. It is used across the globe by all types of professionals and serves as an ideal platform to connect with different businesses, locate and hire ideal candidates, and more. It boasts over 400 million members.",
                              icon: "linkedin"),
                ListHomeModel(id: 9,
                              title: "Telegram",
                              subTitle: "This instant messaging network is similar to WhatsApp and is available across platforms in more than eight languages. However, Telegram has always focused more on the privacy and security of the messages you send over the internet by using its platform. So, it empowers you to send messages that are encrypted and self-destructive. This encryption feature has only just been made available for WhatsApp, whereas Telegram has always provided it.",
                              icon: "telegram")]
    }

    /// Method to get destination view
    /// - Parameter type: Type of view component
    func getDestinationView(type: String) -> AnyView {
        guard let rowType = ListType(rawValue: type) else { return AnyView(EmptyView()) }
        switch rowType {
        case .list:
            return AnyView(ListTypeView())
        case .scrollView:
            return AnyView(HomeScrollView())
        }
    }
}
