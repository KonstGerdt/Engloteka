//
//  EnglotekaApp.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 26.05.2023.
//

import SwiftUI

@main
struct EnglotekaApp: App {
    var body: some Scene {
        let _ = print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path)
        
        
        WindowGroup {
            SplashScreen()
                .preferredColorScheme(.light)
        }
    }
}
