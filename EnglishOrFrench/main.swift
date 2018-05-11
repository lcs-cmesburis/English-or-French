//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here

// Expected lines
var expectedLines = -1 // Temporary value, but GLOBAL variable so we can use this in PROCESS
while 1 == 1 {
    
    // Ask the user how many lines of input to expect?
    print("How many lines?")
    
    // Test #1: Get the input and see if it is nil
    guard let givenInput = readLine() else {
        continue
    }
    
    // Test #2: Can I make the input an integer?
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    // Test #3: Is it in the correct range?
    if givenInteger < 0 || givenInteger > 10000 {
        continue
    }
    
    // If we made it here, the input passed all the tests, so save it in the global variable
    // to use later on
    expectedLines = givenInteger
    break // stop the loop
}

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

var englishLetters = 0
var frenchLetters = 0

print("Please enter the \(expectedLines) lines of text:")
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    for letter in givenLine {
        switch letter {
        case "t" , "T":
            englishLetters += 1
        case "s" , "S":
            frenchLetters += 1
        default:
            break
        }
    }

}

//Output
// Report results to the user here

if englishLetters > frenchLetters {
    print("This looks like English.")
} else {
    print("This looks like French")
}

