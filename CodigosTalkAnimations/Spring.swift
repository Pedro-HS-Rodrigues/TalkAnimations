//
//  Spring.swift
//  CodigosTalkAnimations
//
//  Created by Pedro Henrique Santos Rodrigues on 31/07/23.
//

import SwiftUI

struct Spring: View {
    @State var animation = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [.yellow, .orange, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack {
                Image(systemName: "play.circle")
                    .resizable()
                    .frame(width: animation ? 200 : 50, height: animation ? 200 : 50)
                    .offset(x: animation ? 0 : 0, y: animation ? -205 : 0)
                    .padding(.bottom)
                
                BotaoView()
                    .onTapGesture {
                        withAnimation(.spring(response: 3.5, dampingFraction: 0.7, blendDuration: 0)){
                            animation.toggle()
                        }
                    }
            }
            .padding()
        }.ignoresSafeArea()
    }
}

struct Spring_Previews: PreviewProvider {
    static var previews: some View {
        Spring()
    }
}
