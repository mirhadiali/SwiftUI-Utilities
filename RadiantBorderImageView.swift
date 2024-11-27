//
//  RadiantBorderImageView.swift
//  The10Percent
//
//  Created by Hadi Ali on 28/11/2024.
//

import SwiftUI

struct RadiantBorderImageView: View {
    var viewSize: CGFloat = 150
    private var imageSize: CGFloat {
        return viewSize/1.15
    }
    var image: ImageResource
    
    var body: some View {
        ZStack {
            // Gradient Border
            RoundedRectangle(cornerRadius: viewSize/4, style: .circular)
                .strokeBorder(
                    LinearGradient(
                        gradient: Gradient(colors: [.blue, .purple, .pink]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 3
                )
                .frame(width: viewSize, height: viewSize)
            
            // Image with padding inside the border
            Image(image)
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: imageSize/4))
                .frame(width: imageSize, height: imageSize)
        }
    }
}

struct ContentView: View {
    var body: some View {
        RadiantBorderImageView(image: .dummy)
            .padding()
    }
}
#Preview {
    ContentView()
}
