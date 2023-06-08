//
//  NewLink.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 7.06.2023.
//

import SwiftUI
import RealmSwift

struct NewLink: View {
    @State var linkTitle = ""
    @State var link = ""
    @EnvironmentObject var linkVeiwModel: LinkViewModel
    @State var showAlert = false
    @ObservedResults(LinkModel.self) var links

    
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("New Link")
                    .font(.system(size: 20, weight: .black))
                    .padding(.leading, 16)
                Spacer()
                Button{
                    linkVeiwModel.isShowAddLink.toggle()
                }label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.black)
                }
            }
            
            VStack(alignment: .leading) {
                
                HStack {
                    TextField("Title", text: $linkTitle)
                }
                        .padding(.horizontal, 23)
                        .padding(.vertical, 13)
                        .background(Color("GRAY"))
                //                        .cornerRadius(10)
                        .clipShape(Capsule())
                
                HStack {
                    TextField("Link", text: $link)
                }
                .padding(.horizontal, 23)
                .padding(.vertical, 13)
                .background(Color("GRAY"))
                .clipShape(Capsule())
            
            }
            
            
            Spacer()
            Button{
                if  linkTitle.count < 0,
                    link.count < 0{
                    showAlert.toggle()
                }else{
                 
                    let newLink = LinkModel()
                    newLink.link = link
                    newLink.linkName = linkTitle
                    
                    $links.append(newLink)
                    withAnimation{
                        linkVeiwModel.isShowAddLink.toggle()
                    }
                }
            }label: {
                Text("Save")
                    .padding (.vertical, 13)
                    . frame (maxWidth: .infinity)
                    . background (Color ("MAIN" ))
                    .foregroundColor(Color(.white))
                    .clipShape(Capsule())
            
            }
            .alert(Text("Empty fields"), isPresented: $showAlert, actions: {})
        }
        
        .frame (maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(15)
        .background(.white)
    }
}

struct NewLink_Previews: PreviewProvider {
    static var previews: some View {
        NewLink()
    }
}
