//
//  ContentView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 10/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView{
                RecommendationsView()
                    .tabItem {
                        Label("Recomendações",
                              systemImage: "doc.text.image")
                    }
                YourTeasView(tea: teas[0])
                    .tabItem {
                        Label("Seus Chás",
                              systemImage: "cup.and.saucer.fill")
                    }
                SearchView(tea: teas[0])
                    .tabItem {
                        Label("Buscar",
                              systemImage: "magnifyingglass")
                    }
            }
            .accentColor(.init(hue: 80 / 360, saturation: 0.7, brightness: 0.6))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
