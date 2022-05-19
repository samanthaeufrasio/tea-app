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
        Text(tea.name)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(tea: teas[0])
    }
}
