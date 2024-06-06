//
//  ContentView.swift
//  TurboStudioApp
//
//  Created by Alex Kior on 06.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Turbo Tandoori")
                    .padding(.top, 30)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
            }
        }
        .background(
            Image(.images)
                .resizable()
                .frame(width: 1000, height: 800)
                .edgesIgnoringSafeArea(.all)
                .background(
                    Color.black
                        .edgesIgnoringSafeArea(.vertical)
                )
        )

        
    }
}

#Preview {
    ContentView()
}
