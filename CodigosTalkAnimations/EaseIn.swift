//
//  EaseIn.swift
//  CodigosTalkAnimations
//
//  Created by Pedro Henrique Santos Rodrigues on 31/07/23.
//

import SwiftUI

struct EaseIn: View {
    
    @State var animation = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.mint, .cyan, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack{
                Image(systemName: "play.circle")
                    .resizable()
                    .frame(width: animation ? 200 : 50, height: animation ? 200 : 50)
                    .offset(x: animation ? 0 : 0, y: animation ? -205 : 0)
                    .padding(.bottom)
                BotaoView()
                    .onTapGesture {
                        withAnimation(.easeOut(duration: 2.0)){
                            animation.toggle()
                        }
                    }
            }
        }
        .ignoresSafeArea()
    }
}

struct EaseIn_Previews: PreviewProvider {
    static var previews: some View {
        EaseIn()
    }
}
