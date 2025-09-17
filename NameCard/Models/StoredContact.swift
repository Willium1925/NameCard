//
//  Untitled.swift
//  NameCard
//
//  Created by fcuiecs on 2025/9/16.
//

import Foundation
import SwiftData

@Model
class StoredContact {
    var id: UUID
    var name: String
    var title: String
    var email: String
    
    // @Relationship(inverse: \ContactCategory.contacts) // 有關聯的其中一方有寫即可
    var category: ContactCategory? // 多方
    
    init(id: UUID, name: String, title: String, email: String) {
        self.id = id
        self.name = name
        self.title = title
        self.email = email
    }
}
