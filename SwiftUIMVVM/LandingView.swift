//
//  LandingView.swift
//  SwiftUIMVVM
//
//  Created by Marcos Jr on 03/03/23.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Spacer().frame(height: proxy.size.height * 0.20)
                Text("Workout App")
                    .font(
                        .system(
                            size: 56,
                            weight: .medium)
                    )
                Spacer()
                Button(action: {}) {
                    HStack(spacing: 16) {
                        Spacer()
                        Image(systemName: "plus.circle")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(.white)
                        Text("Initiate")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .padding(.horizontal, 16)
                .buttonStyle(PrimaryButtonStyle())
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity
            )
            .background(
                Image("backgroundImage")
                .resizable()
                .aspectRatio(
                    contentMode: .fill
                ).overlay(Color.black.opacity(0.4))
                .frame(width: proxy.size.width)
                .edgesIgnoringSafeArea(.all)
            )
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
