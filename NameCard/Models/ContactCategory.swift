//
//  ContactCategory.swift
//  NameCard
//
//  Created by fcuiecs on 2025/9/16.
//

import Foundation
import SwiftData

@Model
class ContactCategory {
    var id: UUID
    var name: String
    
    @Relationship(deleteRule: .nullify, inverse: \StoredContact.category) // 讓對方失去這裡的關聯，aka讓對方變孤兒
    var contacts: [StoredContact] = [] // 一方
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
