//
//  YourTeasView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 12/05/22.
//

import SwiftUI

struct YourTeasView: View {
    
    var tea: Tea
    
    @State private var showingSheet: Bool = false
    @State private var showFavoritesOnly = false
    
    var filteredTeas: [Tea]{
        teas.filter { tea in
            (!showFavoritesOnly || tea.isFavorite)
        }
    }
    var body: some View {
        
        NavigationView {
            List (filteredTeas) { tea in
                NavigationLink{
                    TestView(tea: tea)
                } label: {
                    TeaItem(tea: tea)
                }
            }.listStyle(.inset)
            .navigationTitle("Seus Chás")
        }
    }
}

struct YourTeasView_Previews: PreviewProvider {
    static var previews: some View {
        YourTeasView(tea: teas[0])
    }
}
