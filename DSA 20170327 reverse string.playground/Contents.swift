//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
func reverseString(_ s: String) -> String {
    var arrayChars = Array(s.characters)
    var result: String = ""
    for char in 0...arrayChars.count - 1 {
        result.insert(arrayChars[char], at: result.startIndex)
    }
    return result
}

reverseString(str)

//: Playground - noun: a place where people can play

import UIKit


//Reverse a String

/*  Clarifying questions
 1) Can we use higher ordered functions?
 2) Can I use .reverse()?
 3) How do I handle whitespace and punctuation?
 */


/* Identify inputs and outputs
 1)
 Input: String
 Output: String
 
 2)
 Input: String
 Output: Void (Print the reversed String)
 
 3)
 Input: Void (By extending the struct)
 Output: Void
 */

/* Give an explanation in words
 1)
 Iterate through each character in the String, from the last character to the first.
 
 Append each character to an empty array of characters.
 
 Convert this array of characters into a String, then return it.
 
 2) Iterate through each character in the String, from the fist character to the last.
 
 Push each character onto a Stack of characters
 
 Create a string by popping each character off and adding to the end of the String.
 
 Then return the String
 
 */

// Write code to solve a problem


func reverseString(str: String) -> String {
    var myStack: [Character] = []
    for c in str.characters {
        myStack.append(c)
    }
    var reversedStr = ""
    while !myStack.isEmpty {
        reversedStr.append(myStack.popLast()!)
    }
    return reversedStr
}


//Debug code by testing with sample inputs

//"sample"

//[]
//reversedStr = ""

//reveresedStr = "elpmas"

reverseString(str: "sample")
