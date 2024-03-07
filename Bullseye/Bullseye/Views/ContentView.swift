//
//  ContentView.swift
//  Bullseye
//
//  Created by Julian Villar on 7/9/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 20.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack{
            Text("PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack{
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0 ... 100.0)
                Text("100")
                    .bold()
            }
            Button("Hit me"){
                print("eo")
                alertIsVisible = true
            }
            .alert(
                "this is my alert header",
                isPresented: $alertIsVisible,
                actions: {
                    Button("This is the closing button"){
                        print("Closing")
                    }
                },
                message: {
                    let roundedValue = Int(sliderValue.rounded())
                    Text("""
                        Rounded slider value is \(roundedValue)
                        Slider raw \(sliderValue)
                        The score is \(game.points(sliderValue: roundedValue))
                    """)
                    
                }
            )
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
