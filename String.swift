//
//  String.swift
//  Add 1
//
//  Created by Caryl Peneyra on 28/12/20.
//

import Foundation

// Extend the string struct
extension String {
    
    // Mark: Generate random string of integers
    static func randomNumber(length: Int) -> String {
        var result = ""
                
        for _ in 0..<length {
            let digit = Int.random(in: 0...9)
            result += "\(digit)"
        }
        
        return result
    }
    
    // Get character (i.e. integer) at given index
    func integer(at n: Int) -> Int {
        // Get index of a position in the string
        let index = self.index(self.startIndex, offsetBy: n)
        
        // Get character from string by index, then return
        return self[index].wholeNumberValue ?? 0
    }
}
