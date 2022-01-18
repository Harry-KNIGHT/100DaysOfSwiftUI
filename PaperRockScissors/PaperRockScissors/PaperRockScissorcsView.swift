//
//  PaperRockScissorcsView.swift
//  PaperRockScissors
//
//  Created by Elliot knight on 17/01/2022.
//

import SwiftUI

struct PaperRockScissorcsView: View {
    
    let moves = ["👊🏼", "✋🏻", "✌🏼"]
    
    @State private var computerChoice = Int.random(in: 0..<3)
    @State private var shouldWin = Bool.random()
    
    @State private var score = 0
    @State private var questionCount = 1
    @State private var showsResult = false
    var body: some View {
            ZStack {
                LinearGradient(colors: [.blue, .red], startPoint: .top, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    Text("Paper Rock Scissors !")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                VStack {
                    Spacer()
                    Text("Computer has played !")
                        .font(.title2)
                        .foregroundColor(.accentColor)
                      
                    Text(moves[computerChoice])
                        .font(.system(size: 200))
                    if shouldWin {
                        Text("Wich one wins ?")
                            .font(.title2)
                            .foregroundColor(.green)
                    }else {
                        Text("Which one looses ?")
                            .font(.title2)
                            .foregroundColor(.red)
                    }
                        HStack {
                            ForEach(0..<3) { number in
                                Button(moves[number]) {
                                    // Tapped action
                                    playing(choice: number)
                                    
                                }
                                .font(.system(size: 75))
                            }
                            .alert("Game over", isPresented: $showsResult) {
                                Button("PLay again", action: resetGame)
                            } message: {
                                Text("Your score was \(score) up to \(questionCount)")
                            }
                        }
                    Spacer()
                    if score > 5 {
                        Text("Score \(score)")
                            .foregroundColor(.green)
                            .font(.subheadline)
                    }else {
                        Text("Score \(score)")
                            .foregroundColor(.primary)
                            .font(.subheadline)
                    }
                    Spacer()
                }    .frame(minWidth: 230, idealWidth: 260, maxWidth: 380, minHeight: 200, idealHeight: 300, maxHeight: 600)
                    .padding(.vertical)
                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
        }
    }
    /* func for when the button is tapped, get the answer then play and show the result if lost or win. */
    func playing(choice: Int) {
        let winningMoves = [1, 2, 0]
        let didWin: Bool
        // more code after
        if shouldWin {
            didWin = choice == winningMoves[computerChoice]
        }else {
            // should lose
            didWin = winningMoves[choice] == computerChoice
        }
        
        if didWin {
            score += 1
        } else {
            score -= 1
        }
        
        if questionCount == 10 {
            showsResult = true
        } else {
            computerChoice = Int.random(in: 0..<3)
            shouldWin.toggle()
            questionCount += 1
        }
    }
    // func for reset game
    func resetGame() {
        computerChoice = Int.random(in: 0..<3)
        shouldWin = Bool.random()
        questionCount = 0
        score = 0
    }
}

struct PaperRockScissorcsView_Previews: PreviewProvider {
    static var previews: some View {
        PaperRockScissorcsView()
    }
}
