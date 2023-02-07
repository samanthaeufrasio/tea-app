//
//  ModelData.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 18/05/22.
//

import Foundation
import Combine
import SwiftUI

final class ModelData: ObservableObject {
    
    @Published var teas: [Tea] = load("teaData.json")
    
    func toggle(tea: Tea) {
        if let index = teas.firstIndex(of: tea) {
            teas[index].isFavorite.toggle()
            objectWillChange.send()
        }
    }

}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
