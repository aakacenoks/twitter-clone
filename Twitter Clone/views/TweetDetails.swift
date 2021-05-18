//
//  TweetDetails.swift
//  Twitter Clone
//
//  Created by Andris on 18/05/2021.
//

import SwiftUI

struct TweetDetails: View {
    @State var tweet: Tweet
    
    var body: some View {
        HStack {
            TweetDetailsItem(image: "reply", amount: tweet.replies)
            TweetDetailsItem(image: "retweet", amount: tweet.retweets)
            TweetDetailsItem(image: "fave", amount: tweet.favorited)
            
            Button(action: {}, label: {
                Image("share")
            })
            .padding(.horizontal, 15)
        }
    }
}
