//
//  ContentView.swift
//  BreathCircle
//
//  Created by Mehrooz on 20/05/2025.
//

import SwiftUI



struct BreathingCircle: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(.blue)
            .scaleEffect(scale)
            .onAppear {
                withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                    scale = 1.2
                }
            }
    }
}

struct BreathingCircle_Previews: PreviewProvider {
    static var previews: some View {
        BreathingCircle()
    }
}
