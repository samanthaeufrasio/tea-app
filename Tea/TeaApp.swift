//
//  TeaApp.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 10/05/22.
//

import SwiftUI

@main
struct TeaApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(modelData: modelData)
//                .environmentObject(modelData)
        }
    }
}
