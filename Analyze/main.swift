//
//  main.swift
//  Analyze
//
//  Created by RobbSShecter on 8/22/16.
//  Copyright © 2016 dogweather. All rights reserved.
//

import Foundation


func cleanUp(s: String) -> String {
    return splitIntoSentences(summary: fixHyphenation(s: fixWhitespace(s: s)))[0]
}

func fixHyphenation(s: String) -> String {
    return s.replacingOccurrences(of: "- ", with: "")
}

func fixWhitespace(s: String) -> String {
    return s.replacingOccurrences(of: "\n", with: " ")
}

func splitIntoSentences(summary: String) -> [String] {
    return summary
            .components(separatedBy: ". ")
            .map { ensureEndsWithPeriod(sentence: $0) }
}

func ensureEndsWithPeriod(sentence: String) -> String {
    if let lastCharacter = sentence.characters.last {
        if lastCharacter == "." {
            return sentence
        } else {
            return sentence + "."
        }
    } else {
        return sentence
    }
}


print( cleanUp(s: "Hello,\nWor- ld!") )
