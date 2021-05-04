//
//  Tabs.swift
//  Twitter Clone
//
//  Created by Andris on 04/05/2021.
//

import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem { HStack {
                    Image("group4")
                        .renderingMode(.template)
                }
            }
            Text("Explore")
                .tabItem { HStack {
                    Image("group3")
                        .renderingMode(.template)
                }
            }
            Text("Notifications")
                .tabItem { HStack {
                    Image("group2")
                        .renderingMode(.template)
                }
            }
            Text("Messages")
                .tabItem { HStack {
                    Image("group")
                        .renderingMode(.template)
                }
            }
        }
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
