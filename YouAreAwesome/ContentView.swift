//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by scott matheson on 17/02/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var imageName: String = ""
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            Spacer()
            
      
            Button("Press Me!") {
                let message1 = "You are Awesome"
                let message2 = "You are Greate"
                let imageString1 = "sun.max.fill"
                let imageString2 = "hand.thumbsup"
                
                message = (message == message1 ? message2:  message1)
                imageName = (message == message1 ? imageString2:  imageString1)
                
//                if(message == message1){
//                    message = message2
//                    imageName = imageString2
//                }else{
//                    message=message1
//                    imageName = imageString1
//                }
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
