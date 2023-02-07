//
//  FavoriteButton.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 19/05/22.
//

import SwiftUI

struct FavoriteButton: View {
    
    var isSet: Bool
    
    var onChange: () -> Void
    
    var body: some View {
        Button{
            onChange()
        }label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .red : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: true, onChange: {})
    }
}
