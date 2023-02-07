//
//  ContentView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 10/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var modelData: ModelData
    
    var body: some View {
            TabView{
                RecommendationsView(modelData: modelData)
                    .tabItem {
                        Label("Recomendações",
                              systemImage: "doc.text.image")
                    }
                YourTeasView(modelData: modelData)
                    .tabItem {
                        Label("Favoritos",
                              systemImage: "heart.fill")
                    }
                SearchView(modelData: modelData)
                    .tabItem {
                        Label("Chás",
                              systemImage: "cup.and.saucer")
                    }
            }
            .accentColor(.init(hue: 80 / 360, saturation: 0.7, brightness: 0.6))
    }
    
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ContentView()
//                .environmentObject(ModelData())
//        }
//    }
//}
