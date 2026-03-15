//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by scott matheson on 17/02/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var message: [String] = ["You are Awesome","You are Greate","Message3","Message4"]
    @State private var imageName: String = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
  
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
          
            Text(message[messageNumber])
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Spacer()
      
            Button("show Messge!") {

                imageNumber += 1
                imageName = "image\(imageNumber)"
                
                if (imageNumber>9) {
                    imageNumber = 0
                }
                
                messageNumber += 1
                print(messageNumber)
                if messageNumber == message.count{
                  messageNumber = 0
                    print ("message number ot large ")
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
