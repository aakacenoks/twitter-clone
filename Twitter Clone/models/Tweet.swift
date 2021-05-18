//
//  Tweet.swift
//  Twitter Clone
//
//  Created by Andris on 04/05/2021.
//

import Foundation

struct Tweet: Codable {
    var username: String
    var nickname: String
    var created: String
    var message: String
    var messageImage: String?
    var replies: Int
    var retweets: Int
    var favorited: Int
    var avatarImage: String
}
