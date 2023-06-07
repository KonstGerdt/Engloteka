//
//  NewWord.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 7.06.2023.
//

import SwiftUI

struct NewWord: View {
    @State var newWord = ""
    @State var wordTranslate = ""
    @State var wordDescription = ""
    @EnvironmentObject var listViewModel: ListViewModel
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("New Word")
                    .font(.system(size: 20, weight: .black))
                    .padding(.leading, 16)
                Spacer()
                Button{
                    listViewModel.isShowAddView.toggle()
                }label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.black)
                }
            }
            
            VStack(alignment: .leading) {
                Text("ENG")
                    .font(.system(size: 12, weight: .black))
                HStack {
                    TextField("Word", text: $newWord)
                }
                        .padding(.horizontal, 23)
                        .padding(.vertical, 13)
                        .background(Color("GRAY"))
                //                        .cornerRadius(10)
                        .clipShape(Capsule())
                
                HStack {
                    TextField("Translate", text: $wordTranslate)
                }
                .padding(.horizontal, 23)
                .padding(.vertical, 13)
                .background(Color("GRAY"))
                .clipShape(Capsule())
                
                Text("Description")
                    .font(.system(size: 14, weight: .black))
                    .padding(.top, 23)
                    .padding(.leading, 23)
                HStack {
                    TextEditor(text: $wordDescription)
                        .frame(height: 90)
                        .colorMultiply(Color("GRAY"))
                }
                .padding (.vertical, 13)
                .padding (.horizontal, 23)
                .background (Color ("GRAY"))
                .cornerRadius (10)
                
                
                
                
                
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

struct NewWord_Previews: PreviewProvider {
    static var previews: some View {
        NewWord()
    }
}
