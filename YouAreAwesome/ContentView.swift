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
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
        
            Spacer()
            
            HStack{
                Button("Cick Me!") {
                    message="Awesome"
                }
                
                Button("Great"){
                    message="Great!"
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
