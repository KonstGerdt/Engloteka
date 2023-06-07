//
//  LinksView.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 7.06.2023.
//

import SwiftUI

struct LinksView: View {
    @EnvironmentObject var linkVeiwModel: LinkViewModel
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
            ScrollView() {
                VStack(spacing: 20){
                    LinkItem(text: "Урок по грамматике")
                    LinkItem(text: "Урок по грамматике")
                
                }
                
            }
            
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                linkVeiwModel.isShowAddLink.toggle()
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 56, height: 56)
                        .foregroundColor(Color("MAIN"))
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                }
                
                
            }
            .offset(x: -20, y: -30)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        
    }
}


struct LinkItem: View {
    
    
    var text: String
    var body: some View{
        HStack {
            HStack(spacing: 15){
                Image(systemName: "link")
                Text(text)
                    .font(.system(size: 15))
            }
            Spacer()
            
            Button {
                //
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(20)
        .background(Color("GRAY"))
        //.clipShape(Capsule())
        .cornerRadius(10)
    }
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
