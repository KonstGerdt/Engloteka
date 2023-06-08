//
//  WordItem.swift
//  Engloteka
//
//  Created by Konstantin Durkin on 8.06.2023.
//

import Foundation
import RealmSwift

class WordItem: Object, ObjectKeyIdentifiable{
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var location: String = "Eng"
    @Persisted var mainWord: String = ""
    @Persisted var wordTranslate: String = ""
    @Persisted var wordDescription: String = ""
    @Persisted var weight: Int = 0
    
    override class func primaryKey() -> String? {
        "id"
    }
}
