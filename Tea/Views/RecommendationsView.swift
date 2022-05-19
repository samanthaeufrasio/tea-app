//
//  RecommendationsView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 12/05/22.
//

import SwiftUI

struct RecommendationsView: View {
    
    @State private var showingSheet: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical){
                HStack{
                VStack(alignment: .leading){
                    
                    Text("Chá do dia")
                        .font(.title2).bold()
                    Text("Teste")
                }
//                    Button(action: {
//                        self.showingSheet = true
//                    }) {
//                        RoundedRectangle(cornerRadius: 24, style: .continuous).ignoresSafeArea()
//                            .aspectRatio(3.6, contentMode: .fit)
//                            .foregroundColor(.white)
//                            .shadow(color: .black.opacity(0.2), radius: 3, x: 0, y: 0)
//                            .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 5))
//                        
//                    }.sheet(isPresented: $showingSheet){
//                        NavigationView{
//                            Text("Chá Verde")
//                                .toolbar{
//                                    ToolbarItem(placement: .primaryAction){
//                                        Button(action: {
//                                            self.showingSheet = false
//                                        }) {
//                                            Text("Feito")
//                                                .fontWeight(.semibold)
//                                        }
//                                    }
//                                }
//                                .navigationTitle("Texto")
//                        }
//                    }
                    Spacer()
                }
//                .padding()

            }
            .padding()
            .navigationTitle("Recomendações")
            //                .background(Color.init(hue: 240 / 360, saturation: 0.02, brightness: 0.96))
        }
        //        .padding()
    }
    
    
}

struct RecommendationsView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationsView()
    }
}
