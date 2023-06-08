//
//  LinkShowView.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 8.06.2023.
//

import SwiftUI

struct LinkShowView: View {
    
    @EnvironmentObject var linkVeiwModel: LinkViewModel
    @Binding var url: String
    
    @State var isLoaded = false
    @State var title = ""
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                HStack{
                    Circle()
                        .frame(width: 30)
                        .foregroundColor(isLoaded ? Color("MAIN") : .black)
                    Spacer()
                    Text(title)
                        .padding(.trailing, 10)
                        .fontWeight(.medium)
                    Spacer()
                    Button{
                      linkVeiwModel.isShowLinkContent.toggle()
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    }
                    
                    }
                
                
                .padding(.horizontal, 15)
                .padding(.bottom, 10)
                .background(Color("GRAY"))
                WebView(url: $url) { isLoad in
                    self.isLoaded  = isLoad
                }
            }
            
        }
        .onAppear {
            if let url = URL(string: url){
                self.title = url.host ?? ""
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


