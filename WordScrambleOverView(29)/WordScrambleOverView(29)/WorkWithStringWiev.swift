//
//  WorkWithStringWiev.swift
//  WordScrambleOverView(29)
//
//  Created by Elliot Knight on 24/01/2022.
//

import SwiftUI

struct WorkWithStringWiev: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func test() {
        
        let word = "swift"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspeledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allgood = misspeledRange.location == NSNotFound
//        let input = "a b c"
//        let letters = input.components(separatedBy: "\n")
//        let letter = letters.randomElement()
//
//        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct WorkWithStringWiev_Previews: PreviewProvider {
    static var previews: some View {
        WorkWithStringWiev()
    }
}
