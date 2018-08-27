//
//  BowlingGameTests.swift
//  BowlingGameTests
//
//  Created by David Porter on 8/27/18.
//  Copyright © 2018 David Porter. All rights reserved.
//

import XCTest
@testable import BowlingGame

class BowlingGameTests: XCTestCase {

    var game: Game!

    override func setUp() {
        super.setUp()
        game = Game()
    }

    override func tearDown() {
        game = nil
        super.tearDown()
    }

    func testGutterGame() {
        let n = 20
        let pins = 0
        for _ in 1...n {
            game.roll(pins)
        }

        XCTAssertEqual(game.score(), 0)
    }

    func testAllOnes() {
        for _ in 1...20 {
            game.roll(1)
        }

        XCTAssertEqual(game.score(), 20)
    }
    
}
