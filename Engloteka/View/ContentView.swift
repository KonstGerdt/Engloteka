//
//  ContentView.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 26.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .padding(.horizontal, 15)
                .tag(1)
                .tabItem {
                    VStack {
                        Image(systemName: "list.dash")
                        Text("List")
                    }
                }
            Text("Words")
                .tag(2)
                .tabItem {
                    VStack {
                        Image(systemName: "textformat.abc")
                        Text("ABC")
                    }
                }
            Text("Links")
                .tag(3)
                .tabItem {
                    VStack {
                        Image(systemName: "link")
                        Text("Link")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
