//
//  RandomWordView.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 6.06.2023.
//

import SwiftUI
import RealmSwift

struct RandomWordView: View {
    @State var isShowTranslate = false
    @ObservedResults(WordItem.self) var wordItems
    @State var offsetX: CGFloat = 0
    @State var opacity: CGFloat = 1
    
    @State var word = WordItem()
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack(spacing: 23) {
                    VStack(alignment: .leading){
                        Text("ENG")
                            .font(.system(size: 12, weight: .black))
                        Text(word.mainWord)
                            .font(.system(size: 36, weight: .black))
                    }
                    ZStack {
                        Text(word.wordTranslate)
                            .font(.system(size: 26,weight: .thin))
                            .opacity(isShowTranslate ? 1 : 0)
                        Button {
                            withAnimation {
                                isShowTranslate.toggle()
                            }
                            
                        } label: {
                            Text("Show Translate")
                                .padding(.vertical, 13)
                                .padding(.horizontal, 60)
                                .foregroundColor(.white)
                                .background(Color("MAIN"))
                                .clipShape(Capsule())
                            
                        }
                        .opacity(isShowTranslate ? 0 : 1)
                    }
                    
                }
                .opacity(opacity)
                .offset(x: offsetX)
                Spacer()
                Button {
                    withAnimation{
                        offsetX = -50
                        opacity = 0
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                        getRandomWord()
                        offsetX = 50
                        isShowTranslate = false
                        withAnimation{
                            offsetX = 0
                            opacity = 1
                        }
                    }
                } label: {
                    HStack {
                        Text("Next")
                        Image(systemName: "chevron.right")
                            
                    }
                    
                }
                Rectangle()
                .frame(height: 25)
                .opacity(0)
            }
            .frame(maxWidth: .infinity)
            .onAppear{
                getRandomWord()
            }
        }
        
    }
     func getRandomWord() {
        let rand = Int.random(in: 0...wordItems.count - 1)
         self.word =  wordItems[rand]
    }
    
    struct RandomWordView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
