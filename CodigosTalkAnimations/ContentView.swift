//
//  ContentView.swift
//  CodigosTalkAnimations
//
//  Created by Pedro Henrique Santos Rodrigues on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedPage = 0
    
    
    var body: some View {
        TabView(selection: $selectedPage){
                        ContentView()
                            .tag(0)
                        EaseIn()
                            .tag(1)
                        Linear()
                            .tag(2)
                    }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
