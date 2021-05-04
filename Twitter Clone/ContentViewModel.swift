//
//  ContentViewModel.swift
//  Twitter Clone
//
//  Created by Andris on 04/05/2021.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var tweets: [Tweet] = []
    
    func fetch() {
        guard let url = Bundle.main.url(forResource: "tweets", withExtension: "json") else {
            return
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do {
            tweets = try decoder.decode([Tweet].self, from: data)
        } catch(let error) {
            print("Error: \(error)")
        }
    }
}
