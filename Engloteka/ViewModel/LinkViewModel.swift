//
//  LinkViewModel.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 7.06.2023.
//

import Foundation

class LinkViewModel: ObservableObject {
    @Published var isShowAddLink = false
    
    @Published var isShowLinkContent = false
    
    @Published var openUrl = "" 
}
