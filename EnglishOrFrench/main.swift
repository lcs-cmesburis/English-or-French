//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here

var givenInput = 0
while 1 == 1 {
    
    guard let givenInput = readLine() else {
        continue
    }
    if givenInput.count < 0 || givenInput.count > 10000 {
        continue
    }
    break
}

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

var englishLetters = 0
var frenchLetters = 0
let expectedLines = 0

print("Please enter the \(expectedLines) lines of text:")
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    print(givenLine)
    
}
for letters in givenLine {
    switch letters {
    case "t" , "T":
        englishLetters += 1
    case "s" , "S":
        frenchLetters += 1
    default:
        break
    }
}



//Output
// Report results to the user here

if englishLetters > frenchLetters {
    print("This looks like English.")
} else {
    print("This looks like French")
}

