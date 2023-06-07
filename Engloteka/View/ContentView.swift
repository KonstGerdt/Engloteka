//
//  ContentView.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 26.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 1
    
    @ObservedObject var listViewModel = ListViewModel()
    @ObservedObject var linkVeiwModel = LinkViewModel()
    
    var body: some View {
        ZStack{
            TabView(selection: $selected) {
                ListView()
                    .environmentObject(listViewModel)
                    .padding(.horizontal, 15)
                    .tag(1)
                    .tabItem {
                        VStack {
                            Image(systemName: "list.dash")
                            Text("List")
                        }
                    }
                RandomWordView()
                    .padding(.horizontal, 15)
                    .tag(2)
                    .tabItem {
                        VStack {
                            Image(systemName: "textformat.abc")
                            Text("ABC")
                        }
                    }
                LinksView()
                    .environmentObject(linkVeiwModel)
                    .padding(.horizontal, 15)
                    .tag(3)
                    .tabItem {
                        VStack {
                            Image(systemName: "link")
                            Text("Link")
                        }
                    }
            }
           
            
          
            if listViewModel.isShowAddView{
                NewWord()
                    .environmentObject(listViewModel)
              
            }
            
            if linkVeiwModel.isShowAddLink{
                NewLink()
                    .environmentObject(linkVeiwModel)
              
            }
            
//            VStack {
//
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.black)
      }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
