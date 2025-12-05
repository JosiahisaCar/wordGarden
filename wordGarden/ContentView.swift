//
//  ContentView.swift
//  wordGarden
//
//  Created by Josiah Carver on 12/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var wordsGuessed = 0
    @State private var wordsMissed = 0
    @State private var wordsToGuess = ["MOM" , "DAD" , "KID" , "CAT" , "DOG"]
    @State private var wordsInGame = []
    @State private var gameStatusMessage = "How Many Guesses to Uncover the Hidden Word?"
    @State private var currentWord: Int = 0
    @State private var guessedLetter = ""
    @State private var imageName = "flower8"
    @State private var playAgainHidden = false
    var body: some View {
        VStack{
            
            if playAgainHidden {
                HStack{
                    VStack(alignment: .leading) {
                        Text("Words Guessed: \(wordsGuessed)")
                        Text("Words Missed: \(wordsMissed)")
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("Words to Guess: \(wordsToGuess.count - wordsGuessed + wordsMissed)")
                        Text("Words in Game: \(wordsInGame.count)")
                    }
                }.padding(.horizontal)
                Spacer()
                Text(gameStatusMessage)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                //TODO: Switch wordsToGuess[currentWord]
                Text("_ _ _ _ _")
                    .font(.title)
                HStack{
                    TextField("", text: $guessedLetter)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 30)
                        .overlay{
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                        }
                    Button("Guess a letter:"){
                        //TODO: add button functionality
                    }
                    .buttonStyle(.bordered)
                    .tint(.mint)
                }
            } else {
                Button("Another Word?"){
                    //TODO: Another word button action here
                    playAgainHidden = true
                }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            }
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContentView()
}
