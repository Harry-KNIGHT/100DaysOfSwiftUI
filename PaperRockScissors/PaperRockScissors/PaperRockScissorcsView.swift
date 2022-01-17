//
//  PaperRockScissorcsView.swift
//  PaperRockScissors
//
//  Created by Elliot knight on 17/01/2022.
//

import SwiftUI

struct PaperRockScissorcsView: View {
    
    let moves = ["✋🏻", "👊🏼", "✌🏼"]
    
    @State private var computerChoice = Int.random(in: 0..<3)
    @State private var shouldWin = Bool.random()
    @State private var score = 0
    var body: some View {
        VStack {
            Spacer()
            Text("Computer has played")
                .font(.title)
            Text(moves[computerChoice])
                .font(.system(size: 200))
            
            if shouldWin {
                Text("Who wins ?")
                    .font(.title)
                    .foregroundColor(.green)
            }else {
                Text("Who lost ?")
                    .font(.title)
                    .foregroundColor(.red)
            }
            HStack {
                ForEach(0..<3) { number in
                    Button(moves[number]) {
                        
                    }
                    .font(.system(size: 70))
                }
            }
            Spacer()
            Text("Score \(score)")
                .font(.subheadline)
            Spacer()
        }
    }
        /* func for when the button is tapped, get the answer then play and show the result if lost or win. */
        func playing(choice: Int) {
            let winningMoves = [1, 2, 0]
            let didWin: Bool
            // more code after
        }
         // func for reset game
         func resetGame() {
             
         }
         
         // func for ask question and add += 1 at question total (max 10)
         func askChoice() {
         }
        
    
}

struct PaperRockScissorcsView_Previews: PreviewProvider {
    static var previews: some View {
        PaperRockScissorcsView()
    }
}
