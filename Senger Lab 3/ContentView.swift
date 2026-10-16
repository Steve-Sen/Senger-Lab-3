//
//  ContentView.swift
//  Senger Lab 3
//
//  Created by Steven Senger on 10/13/26.
//

import SwiftUI

struct ContentView: View {
    @State var image = ""
    @State var message = ""
    var body: some View {
        VStack {
            
            Spacer ()
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle.weight(.ultraLight))
                .foregroundStyle(.black)
            
            Spacer ()
            
            Button("Press me!") {
                if message != "You Are Awsome!" {
                    message = "You Are Awsome!"
                    image = "sun.max.fill"
                }
                else {
                    message = "You Are Great!"
                    image = "hand.thumbsup"
                }
                
            }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
