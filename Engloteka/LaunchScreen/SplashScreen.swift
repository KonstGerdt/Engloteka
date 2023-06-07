//
//  SplashScreen.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 7.06.2023.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    
                    Image("Engloteka.image")
                        .resizable()
                        .frame(width: 120, height: 120)
//                    .font(.system(size: 80))
//                        .foregroundColor(.red)
//                    Text("Engloteka")
//                        .font(Font.custom("Baskerville-Bold", size: 26))
//                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.0)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
