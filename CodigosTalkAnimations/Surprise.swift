//
//  Surprise.swift
//  CodigosTalkAnimations
//
//  Created by Pedro Henrique Santos Rodrigues on 04/08/23.
//

import SwiftUI
import AVFoundation



struct Surprise: View {
    @State private var rotationAngle: Double = 0.0
    @State private var isAnimating: Bool = false
    @State var animation = false
    @State var animation2 = false
    @State var showImage = false
    @State var player: AVAudioPlayer!
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.yellow, Color.orange, Color.red], startPoint: .topLeading, endPoint: .topTrailing)
            VStack{
                if showImage{
                    Image("lucas")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .rotationEffect(.degrees(rotationAngle))
                        .padding()
                        .frame(width: animation ? 1 : 500, height: animation ? 1 : 500)
                }
                BotaoView()
                    .onTapGesture {
                        showImage.toggle()
                        isAnimating.toggle()
                        animation.toggle()
                        rotateImage()
                        playSound()
                        
                    }
            }
        }.ignoresSafeArea()
    }
    private func rotateImage() {
        withAnimation(Animation.linear(duration: 1.0).repeatCount(1)) {
            rotationAngle += 360 * 5 // Girar 360 graus cinco vezes
        }
        
        withAnimation(.spring(response: 1.5, dampingFraction: 0.9, blendDuration: 0)){
            animation.toggle()
        }
        
    }
    func playSound(){
        let url = Bundle.main.url(forResource: "somApp2", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

struct Surprise_Previews: PreviewProvider {
    static var previews: some View {
        Surprise()
    }
}
