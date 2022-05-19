//
//  TesteView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 16/05/22.
//

import SwiftUI

struct TesteView: View {
    var body: some View {
        
        VStack{
            HStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                
                Spacer()
            
            }
            Spacer()
        }
        .padding()
    }
}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
