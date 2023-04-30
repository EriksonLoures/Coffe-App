//
//  ContentView.swift
//  CoffeeApp
//
//  Created by Erik Loures on 29/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        TabView(selection: $pageIndex) {
            ForEach(pages) { page in
                VStack {
                    Spacer()
                    PageView(page: page)
                    Spacer()
                    if page == pages.last {
                        Button("Get started", action: goToZero)
//                            .buttonStyle(.bordered)
                            .frame(maxWidth: 300)
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color("greenDark"))
                            .cornerRadius(28.0)
                    } else {
                        Button("Próximo >>", action: incrementPage)
                        .foregroundColor(Color.black)
                        
                    }
                    Spacer()
                }
                .tag(page.tag)
            }
        }
        .animation(.easeInOut, value: pageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .onAppear {
            dotAppearance.currentPageIndicatorTintColor = .brown
            dotAppearance.pageIndicatorTintColor = .systemBrown
            
        }.background(Color("Color4"))
         .frame(width: .infinity, height: .infinity)
    }
        

func incrementPage() {
    pageIndex += 1
 }

func goToZero() {
    pageIndex = 0
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
