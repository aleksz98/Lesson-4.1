//
//  CircleView.swift
//  Lesson 4.1
//
//  Created by Иван on 08.06.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 0.3)
    }
}
