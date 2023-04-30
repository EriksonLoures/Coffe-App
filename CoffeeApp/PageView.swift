//
//  PageView.swift
//  CoffeeApp
//
//  Created by Erik Loures on 29/04/23.
//

import SwiftUI

struct PageView: View {
    var page: Page
    
    var body: some View {
        VStack(spacing: 20) {
            Image("\(page.imageUrl)")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
//                .padding()
//                .cornerRadius(20)
//                .background(.gray.opacity(0.09))
                .cornerRadius(10)
                .padding()
            
            Text(page.name)
                .font(.title)
            Text(page.description)
                .font(.subheadline)
                .frame(width: 300)
        }       .foregroundColor(Color.white)

    }
        
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.samplePage)
    }
}
