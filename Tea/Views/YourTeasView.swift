//
//  YourTeasView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 12/05/22.
//

import SwiftUI

struct YourTeasView: View {
    
    @ObservedObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredTeas: [Tea]{
        modelData.teas.filter { tea in
            (!showFavoritesOnly || tea.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredTeas) { tea in
                    NavigationLink{
                        TestView(modelData: modelData, tea: tea)
                    } label: {
                        TeaItem(tea: tea)
                    }
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Favoritos")
        }
    }
}

//struct YourTeasView_Previews: PreviewProvider {
//    static var previews: some View {
//        YourTeasView()
//            .environmentObject(ModelData())
//    }
//}
