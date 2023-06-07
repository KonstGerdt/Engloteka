//
//  RandomWordView.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 6.06.2023.
//

import SwiftUI

struct RandomWordView: View {
    @State var isShowTranslate = false
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack(spacing: 23) {
                    VStack(alignment: .leading){
                        Text("ENG")
                            .font(.system(size: 12, weight: .black))
                        Text("Car")
                            .font(.system(size: 36, weight: .black))
                    }
                    ZStack {
                        Text("Машина")
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
                Spacer()
                Button {
                    //
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
        }
    }
    
    struct RandomWordView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
