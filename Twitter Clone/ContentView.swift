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
                        TweetBody(tweet: tweet)
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
