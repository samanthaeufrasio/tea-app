//
//  Tea.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 17/05/22.
//

import Foundation

struct Tea: Hashable, Codable, Identifiable{
    
    var id: Int
    var name: String
    var type: String
    var description: String
    var ingredients: String
    var instruction: String
    var sensation: String
    var cure: String
    var contraindication: String
    var imageName: String
    var isFavorite: Bool
    
}
