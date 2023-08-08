//
//  Linear.swift
//  CodigosTalkAnimations
//
//  Created by Pedro Henrique Santos Rodrigues on 31/07/23.
//

import SwiftUI

struct Linear: View {
    @State var animation = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [.pink, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack{
                Image(systemName: "play.circle")
                    .resizable()
                    .frame(width: animation ? 200 : 50, height: animation ? 200 : 50)
                    .offset(x: animation ? 0 : 0, y: animation ? -205 : 0)
                    .padding(.bottom)
                BotaoView()
                    .onTapGesture {
                        withAnimation(.linear(duration: 1.0)){
                            animation.toggle()
                        }
                    }
            }
        }.ignoresSafeArea()
    }
}

struct Linear_Previews: PreviewProvider {
    static var previews: some View {
        Linear()
    }
}
