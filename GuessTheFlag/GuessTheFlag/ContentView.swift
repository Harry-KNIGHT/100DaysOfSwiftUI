//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Elliot knight on 12/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = allCountries.shuffled()
    
    static let allCountries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Poland", "Russia", "Spain", "UK", "US", "Nigeria"]
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private  var correctAnswer = Int.random(in: 0...2)
    @State private var goodAnswer = 0
    // Finishing game at a limited score
    @State private var showingFinalResult = false
    @State private var answersCounter = 0
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.43)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess The Flag !")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white )
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3) { number in
                        Button {
                            // Flag was tapped
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Your actual score is \(goodAnswer)")
                    .font(.title.bold())
                    .foregroundColor(.white)
                Text("Total Answer is \(answersCounter)")
                    .font(.title.bold())
                    .foregroundColor(.white)
                Spacer()
            }.padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(goodAnswer)")
        }
        
        .alert("Finish !", isPresented: $showingFinalResult) {
            Button("Restart", action: startGame)
        } message: {
            Text("Your final score was \(goodAnswer)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct flag"
            goodAnswer += 1
        }else {
            scoreTitle = "Wrong, that's the flag of \(countries[number])"
        }
        if goodAnswer > 0 {
            goodAnswer -= 1
        }
        if answersCounter == 8 {
            showingFinalResult = true
        } else {
            showingScore = true
        }
    }
    
    func askQuestion() {
        countries.remove(at: goodAnswer)
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        answersCounter += 1
        
    }
    
    func startGame() {
        answersCounter = 0
        goodAnswer = 0
        countries = Self.allCountries
        askQuestion()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
