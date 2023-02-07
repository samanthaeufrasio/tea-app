//
//  RecommendationsView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 12/05/22.
//

import SwiftUI

struct RecommendationsView: View {
    @ObservedObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
                List {
                    Section("Chá do dia") {
                    NavigationLink{
                        TestView(modelData: modelData, tea: modelData.teas[0])
                    } label: {
                        TeaItem(tea: modelData.teas[0])
                    }
                    }
                }
                .listStyle(.sidebar)
                .navigationTitle("Recomendações")
            }
//        }

        
    }
    
}

//struct RecommendationsView_Previews: PreviewProvider {#imageLiteral(resourceName: "simulator_screenshot_3D7F984A-9601-4525-854B-E1BA91FF954A.png")
//    static var previews: some View {
//        RecommendationsView(tea: )
//            .environmentObject(ModelData())
//    }
//}
