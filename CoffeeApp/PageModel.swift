//
//  PageModel.swift
//  CoffeeApp
//
//  Created by Erik Loures on 29/04/23.
//

import SwiftUI

struct Page: Identifiable, Equatable{
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "O inicio", description: "Um bom café comeca na selecao dos graos", imageUrl: "image1", tag: 0)
    
    
    static var samplePages: [Page] = [
        Page(name: "O inicio", description: "Um bom café comeca na selecao dos graos...", imageUrl: "image1", tag: 0),
        Page(name: "Moagem", description: "Vamos para moagem do café...", imageUrl: "image3", tag: 1),
        Page(name: "Café servido", description: "Agora é só degustar o seu café!", imageUrl: "image4", tag: 2),
    ]
    
}
