//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by scott matheson on 17/02/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = "I am a Prorammer"
    var body: some View {
        
        
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            
            Button("Cick Me!") {
                message="Awesome"
            
            }
            
            

        }
        .padding()

    }
}

#Preview {
    ContentView()
}
