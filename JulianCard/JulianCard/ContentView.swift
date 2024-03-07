//
//  ContentView.swift
//  JulianCard
//
//  Created by Julian Villar on 13/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("julian")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3)
                    )
                
                Text("Julián Villar")
                    .font(Font.custom("CherryBombOne-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Junior iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                    
                InfoView(text: "679278081", imageName: "phone.fill")
                InfoView(text: "julvillce@gmail.com", imageName: "envelope.fill")
            }
          
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


