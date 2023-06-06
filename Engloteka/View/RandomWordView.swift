//
//  RandomWordView.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 6.06.2023.
//

import SwiftUI

struct RandomWordView: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack {
                    Text("ENG")
                    font(.system(size: 12, weight: .black))
                    .padding(.bottom, 5)
                    Text("Car")
                    font(.system(size: 36, weight: .black))
                    
                    ZStack {
                        Text("Машина")
                        font(.system(size: 12, weight: .black))
                        .padding(.bottom, 5)
                        Button {
                            
                        } label: {
                            Text("Show Translate")
                        }
                    }
                    
                }
                Spacer()
                Button {
                    
                } label: {
                    HStack {
                        Text("Next")
                        Image(systemName: "")
                    }
                }
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
