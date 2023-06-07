//
//  NewLink.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 7.06.2023.
//

import SwiftUI

struct NewLink: View {
    @State var linkTitle = ""
    @State var link = ""
    @EnvironmentObject var linkVeiwModel: LinkViewModel
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
                
            }label: {
                Text("Save")
                    .padding (.vertical, 13)
                    . frame (maxWidth: .infinity)
                    . background (Color ("MAIN" ))
                    .foregroundColor(Color(.white))
                    .clipShape(Capsule())
            
            }
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
