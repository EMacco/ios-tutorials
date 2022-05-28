//
//  MockData.swift
//  MultiSectionCompositionalLayout
//
//  Created by Emmanuel Okwara on 21.05.22.
//

import Foundation

struct MockData {
    static let shared = MockData()
    
    private let stories: ListSection = {
        .stories([.init(title: "", image: "profile-1"),
                  .init(title: "", image: "profile-2"),
                  .init(title: "", image: "profile-3"),
                  .init(title: "", image: "profile-4"),
                  .init(title: "", image: "profile-5"),
                  .init(title: "", image: "profile-6"),
                  .init(title: "", image: "profile-7"),
                  .init(title: "", image: "profile-8")])
    }()
    
    private let popular: ListSection = {
        .popular([.init(title: "Naruto", image: "popular-1"),
                  .init(title: "Jujutsu Kaisen", image: "popular-2"),
                  .init(title: "Demon Slayer", image: "popular-3"),
                  .init(title: "One Piece", image: "popular-4"),
                  .init(title: "Seven Deadly Sins", image: "popular-5")])
    }()
    
    private let comingSoon: ListSection = {
        .comingSoon([.init(title: "Tokyo Ghoul", image: "soon-1"),
                     .init(title: "Record of Ragnarok", image: "soon-2"),
                     .init(title: "Kaisen Returns", image: "soon-3"),
                     .init(title: "No Idea", image: "soon-4"),
                     .init(title: "Looks interesting", image: "soon-5")])
    }()
    
    var pageData: [ListSection] {
        [stories, popular, comingSoon]
    }
}
