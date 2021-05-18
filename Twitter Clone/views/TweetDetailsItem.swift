//
//  TweetDetailsItem.swift
//  Twitter Clone
//
//  Created by Andris on 18/05/2021.
//

import SwiftUI

struct TweetDetailsItem: View {
    @State var image: String
    @State var amount: Int
    
    var body: some View {
        HStack {
            Image(image)

            Text("\(amount)")
                .font(.caption)
                .fontWeight(.light)
                .foregroundColor(.gray)
        }
        .fixedSize(horizontal: true, vertical: true)
        .frame(width: 67, height: 20)
    }
}
