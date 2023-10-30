//
//  TouchAnimation.swift
//  CodigosTalkAnimations
//
//  Created by Pedro Henrique Santos Rodrigues on 30/10/23.
//

import SwiftUI

struct TouchAnimation: View {
    @State private var isButtonPressed = false

    var body: some View {
        Text("Botão Simulado")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .opacity(isButtonPressed ? 0.7 : 1.0)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        withAnimation {
                            isButtonPressed = true
                        }
                    }
                    .onEnded { _ in
                        withAnimation {
                            isButtonPressed = false
                        }
                    }
            )
    }
}

#Preview {
    TouchAnimation()
}
