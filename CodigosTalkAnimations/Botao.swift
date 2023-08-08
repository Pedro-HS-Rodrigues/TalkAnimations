//
//  SwiftUIView.swift
//  CodigosTalkAnimations
//
//  Created by Pedro Henrique Santos Rodrigues on 31/07/23.
//

import SwiftUI

struct BotaoView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200, height: 60)
                .foregroundColor(.white)
            Text("Ação")
                .foregroundColor(.indigo)
        }
    }
}

struct BotaoView_Previews: PreviewProvider {
    static var previews: some View {
        BotaoView()
    }
}
