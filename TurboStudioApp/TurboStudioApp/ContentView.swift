//
//  ContentView.swift
//  TurboStudioApp
//
//  Created by Alex Kior on 06.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .center) {
                    Text("Turbo Tandoori")
                        .padding(.top, 30)
                        .multilineTextAlignment(.center)
                        .font(.custom("Gruvilicious", size: 54))

                    ScrollView(.vertical, showsIndicators: false) {
                        if showDetails {
                            VStack {
                                Text("Calendar here")
                                    .font(.custom("Gruvilicious", size: 32))
                                    .padding()
                            }
                            .frame(width: 320, height: 550)
                            .background(Color.white)
                            .cornerRadius(20)

                        }
                    }
                    .frame(maxHeight: .infinity)
                    
                    Spacer()
                    
                    if !showDetails {
                        Button("Book now") {
                            showDetails.toggle()
                        }
                        .frame(width: 320, height: 50)
                        .foregroundColor(.black)
                        .font(.custom("Gruvilicious", size: 32))
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.bottom, 20)
                    } else {
                        Button("Back") {
                            showDetails.toggle()
                        }
                        .frame(width: 320, height: 50)
                        .foregroundColor(.black)
                        .font(.custom("Gruvilicious", size: 32))
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.bottom, 20)
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: geometry.size.height)
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
