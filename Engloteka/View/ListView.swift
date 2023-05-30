//
//  ListView.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 26.05.2023.
//

import SwiftUI

struct ListView: View {
    @State var searchText = ""
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 25){
                    //search
                    HStack(spacing: 8){
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 15, height: 15)
                        TextField("Search", text: $searchText)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 20)
                    .background(Color("GRAY"))
                    .cornerRadius(10)
                    
                    
                    //cards
                    VStack(spacing: 20){
                        CardItem()
                        CardItem()
                        CardItem()
                        CardItem()
                        CardItem()
                    }
                }
            }
        }
        //Button
    }
    
    
    struct CardItem: View {
        var body: some View{
            VStack(alignment: .leading, spacing: 10){
                VStack(alignment: .leading, spacing: 0){
                    Text("ENG")
                        .font(.system(size: 12, weight: .black))
                        .padding(.bottom, 5)
                    Text("Car")
                        .font(.system(size: 18, weight: .black))
                        .padding(.bottom, 2)
                    Text("Машина")
                        .font(.system(size: 18, weight: .light))
                }
                Divider()
                VStack(alignment: .leading){
                    Text("примечание")
                        .font(.system(size: 12, weight: .black))
                        .foregroundColor(Color("GRAY1"))
                        .padding(.bottom, 1)
                    Text("Despite the fact that the package containes not the best description of the car - it was quite enough to build a car for the weekend, so it was only a few key components of attention.")
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(20)
            .background(Color("GRAY"))
            .cornerRadius(10)
        }
        
    }
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
