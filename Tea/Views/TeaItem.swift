//
//  TeaItem.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 17/05/22.
//

import SwiftUI

struct TeaItem: View {
    
    var tea: Tea
    
    var body: some View {
        HStack {
            Image(tea.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            
            VStack (alignment: .leading){
                Text(tea.name)
                    .fontWeight(.bold)
                Text(tea.description)
                    .lineLimit(1)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            if tea.isFavorite{
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            } else{
                Image(systemName: "heart")
            }
        }
        
    }
}

struct TeaItem_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TeaItem(tea: teas[0])
            TeaItem(tea: teas[1])
        }
    }
}
