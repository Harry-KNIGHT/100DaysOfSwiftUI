//
//  CountriesView.swift
//  GuessTheFlag
//
//  Created by Elliot knight on 13/01/2022.
//

import SwiftUI

struct CountriesView: View {
    @State private var scoreTitle = ""
    @State private var countries = ["Estonia", "France", "Germany", "Irelande", "Italy", "Poland", "Russia", "Spain", "UK", "US", "Nigeria"].shuffled()
    @State private var showingScore = false
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var scoreValue = 0
    
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.12, green: 0.33, blue: 0.44), location: 0.44),
                .init(color: Color(red: 0.33, green: 0.44, blue: 0.22), location: 0.43)
            ], center: .top, startRadius: 200, endRadius: 600)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                Text("Guess The Flag")
                    .font(.title.bold())
                    .foregroundColor(.white)
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.secondary)
                        .font(.title3)
                    Text(countries[correctAnswer])
                        .font(.title.bold())
                    ForEach(0..<3) { number in
                        Button {
                            // Putton tapped
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(RoundedRectangle(cornerSize: .init(width: 22, height: 44)))
                                .shadow(radius: 10)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Your score is \(scoreValue)")
                    .font(.title.bold())
                    .foregroundColor(.white)
                Spacer()
            }.padding()
            
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(scoreValue)")
        }
    }
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct answer bro"
            scoreValue += 1
        }else {
            scoreTitle = "Hun hun, false !"
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct CountriesView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView()
    }
}
