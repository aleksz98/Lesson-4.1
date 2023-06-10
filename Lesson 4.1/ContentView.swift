//
//  ContentView.swift
//  Lesson 4.1
//
//  Created by Иван on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var setColor: Color = .clear
    @State private var buttonText = "START"
    
    private func changeLightColor() {
        switch setColor {
            case .red: setColor = .yellow
            case .yellow: setColor = .green
            default: setColor = .red
        }
    }
}

extension ContentView {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                CircleView(color: .red, opacity: setColor == .red ? 1 : 0.3)
                CircleView(color: .yellow, opacity: setColor == .yellow ? 1 : 0.3)
                CircleView(color: .green, opacity: setColor == .green ? 1 : 0.3)
                
                Spacer()
                
            }
            .padding(.top, 64)
            
            VStack {
                Button(action: {
                    buttonText = "Next"
                    changeLightColor()
                }) {
                    Text(buttonText)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 60)
                        .background(Color.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 5)
                        )
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.bottom, 32)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
