//
//  Tests.swift
//  Tests
//
//  Created by RobbSShecter on 8/22/16.
//  Copyright © 2016 dogweather. All rights reserved.
//

import XCTest

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    
    override func tearDown() {
        super.tearDown()
    }

        
    func testFixHyphenation() {
        XCTAssertEqual( fixHyphenation(s: "auto- mobile"), "automobile" )
    }
    
    func testFixWhitespace() {
        XCTAssertEqual( fixWhitespace(s: "and\nthe story"), "and the story" )
    }
    
    func testCleanUp() {
        let input = "Relating to the state transient lodging tax; creating\nnew provisions; amending ORS 284.131 and\n320.305; prescribing an effective date; and pro-\nviding for revenue raising that requires approval\nby a three-fifths majority.\nWhereas Enrolled House Bill 2267 (chapter 818,"
        
        let expected_output = "Relating to the state transient lodging tax; creating new provisions; amending ORS 284.131 and 320.305; prescribing an effective date; and providing for revenue raising that requires approval by a three-fifths majority."
        
        XCTAssertEqual( cleanUp(s: input), expected_output )
    }
    
}
