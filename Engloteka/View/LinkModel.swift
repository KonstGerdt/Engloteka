//
//  LinkModel.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 8.06.2023.
//

import Foundation
import RealmSwift





class LinkModel: Object, Identifiable {
    
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var linkName: String = ""
    @Persisted var link: String = ""
    
    
    override class func primaryKey() -> String? {
        "id"
    }
    
}
