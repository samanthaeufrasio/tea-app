//
//  TestView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 18/05/22.
//

import SwiftUI


struct TestView: View {
    @ObservedObject var modelData: ModelData
    
    var tea : Tea
    
    var teaIndex: Int {
        modelData.teas.firstIndex(where: { $0.id == tea.id })!
    }
    
    var body: some View {
        ScrollView{
            VStack {
                HStack {
                    Text(tea.name)
                        .font(.title)
                        .bold()
                    Spacer()
                    
                    FavoriteButton(isSet: tea.isFavorite, onChange: {
                        modelData.toggle(tea: tea)
                    })
                }
                Text(tea.description)
                    .font(.subheadline)
                    .padding(.top)
                Text(tea.ingredients)
                    .font(.subheadline)
                    .padding(.top)
                Text(tea.instruction)
                    .font(.subheadline)
                    .padding(.top)
                
                Spacer()
            }
            .padding()
            
        }
//        .navigationTitle(tea.name)
    }
}

//struct TestView_Previews: PreviewProvider {
//    static let modelData = ModelData()
//    static var previews: some View {
//        TestView(tea: ModelData().teas[0])
//            .environmentObject(modelData)
//    }
//}
