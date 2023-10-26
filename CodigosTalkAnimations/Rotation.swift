//
//  Rotation.swift
//  CodigosTalkAnimations
//
//  Created by Pedro Henrique Santos Rodrigues on 02/08/23.
//

import SwiftUI

struct Rotation: View {
    @State var animation: Bool = false
    @State var angle: Double = 0.0
    var body: some View {
        ZStack{
            LinearGradient(colors: [.mint, .cyan, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
            VStack{
                Image(systemName: "play.circle")
                    .resizable()
                    .rotationEffect(.degrees(angle))
                    .frame(width: animation ? 300 : 1, height: animation ? 300 : 1)
                    .offset(y: animation ? -95 : 0)
                
                BotaoView()
                    .onTapGesture {
                        withAnimation(.spring(response: 2.5, dampingFraction: 0.9, blendDuration: 0)){
                            angle += 360*5
                            animation.toggle()
                        }
                    }
            }
        }.ignoresSafeArea()
    }
        func springRotation(){
            withAnimation(.linear(duration: 1.0).repeatCount(1)){
    
                angle += 360*5
            }
    
            withAnimation(.spring(response: 1.5, dampingFraction: 0.9, blendDuration: 0)){
                animation.toggle()
            }
        }
}

struct Rotation_Previews: PreviewProvider {
    static var previews: some View {
        Rotation()
    }
}
