//
//  ContentView.swift
//  Twitter Clone
//
//  Created by Andris on 04/05/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(viewModel.tweets, id: \.message) { tweet in
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
                                HStack {
                                    HStack {
                                        Image("reply")
                            
                                        Text("\(tweet.replies)")
                                            .font(.caption)
                                            .fontWeight(.light)
                                            .foregroundColor(.gray)
                                    }
                                    .fixedSize(horizontal: true, vertical: true)
                                    .frame(width: 67, height: 20)
                                    
                                    HStack {
                                        Image("retweet")
                                        
                                        Text("\(tweet.retweets)")
                                            .font(.caption)
                                            .fontWeight(.light)
                                            .foregroundColor(.gray)
                                    }
                                    .fixedSize(horizontal: true, vertical: true)
                                    .frame(width: 67, height: 20)
                                    
                                    HStack {
                                        Image("fave")
                                        
                                        Text("\(tweet.favorited)")
                                            .font(.caption)
                                            .fontWeight(.light)
                                            .foregroundColor(.gray)
                                    }
                                    .fixedSize(horizontal: true, vertical: true)
                                    .frame(width: 67, height: 20)
                                    
                                    Button(action: {}, label: {
                                        Image("share")
                                    })
                                    .padding(.horizontal, 15)

                                }
                            }
                            Spacer()
                        }
                        .padding(.top, 15)
                        .padding(.bottom, 15)
                    }
                }
                .listStyle(PlainListStyle())
                .navigationBarTitle("Home", displayMode: .inline)
                .navigationBarItems(
                    leading:
                        Image("oval"),
                    trailing:
                        Button(action: {}, label: {
                            Image("iconSparkle")
                        })
                    )
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {}, label: {
                            Image("newTweet")
                        })
                        .padding()
                        .cornerRadius(30)
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear() {
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
