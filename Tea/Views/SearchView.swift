//
//  SearchView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 12/05/22.
//

import SwiftUI

struct SearchView: View {
    
    var tea: Tea
    
    var body: some View {
        NavigationView {
            List (teas) { tea in
                NavigationLink{
                    TestView(tea: tea)
                } label: {
                    TeaItem(tea: tea)
                }
            }.listStyle(.inset)
                .navigationTitle("Buscar")
        }
    }
    
    struct SearchView_Previews: PreviewProvider {
        static var previews: some View {
            SearchView(tea: teas[0])
        }
    }
}
