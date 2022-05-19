//
//  TestView.swift
//  Tea
//
//  Created by Vinícius Cavalcante on 18/05/22.
//

import SwiftUI


struct TestView: View {
    
    var tea: Tea
    
    var body: some View {
        NavigationView{
            Text(tea.name)
                .font(.title)
                .navigationTitle(tea.name)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(tea: teas[0])
    }
}
