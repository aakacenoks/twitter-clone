//
//  TweetBody.swift
//  Twitter Clone
//
//  Created by Andris on 18/05/2021.
//

import SwiftUI

struct TweetBody: View {
    @State var tweet: Tweet
    
    var body: some View {
        HStack(alignment: .top) {
            Image(tweet.avatarImage)
            
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text(tweet.nickname)
                            .font(.body)
                            .fontWeight(.semibold)
                        
                        HStack(alignment: .bottom) {
                            Text(tweet.username)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .lineLimit(1)
                
                            Text("• \(tweet.created)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .lineLimit(1)
                                .fixedSize()
                        }
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image("more")
                        })
                    }
                    Text(tweet.message)
                        .font(.subheadline)
                        .foregroundColor(.primary)
                        .padding(.top, 1)
                        .padding(.bottom, 10)
                    
                    if let tweetImage = tweet.messageImage {
                        AnyView(
                            Image(tweetImage)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 130)
                            .cornerRadius(24)
                            .clipped()
                            .padding(.bottom, 10)
                        )
                    }
                }
                TweetDetails(tweet: tweet)
            }
            Spacer()
        }
        .padding(.top, 15)
        .padding(.bottom, 15)
    }
}
