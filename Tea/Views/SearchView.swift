//
//  SearchView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 12/05/22.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var modelData: ModelData
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {

            List (modelData.teas) { tea in
                    NavigationLink{
                        TestView(modelData: modelData, tea: tea)
                    } label: {
                        TeaItem(tea: tea)
                    }
                    
                }
                .listStyle(.sidebar)
                .navigationTitle("Chás")
            }

    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView(tea: ModelData().teas[0])
//            .environmentObject(ModelData())
//    }
//}

