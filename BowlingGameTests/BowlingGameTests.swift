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

    private func rollMany(pins: Int, times: Int) {
        for _ in 1...times {
            game.roll(pins)
        }
    }

    func testGutterGame() {
        rollMany(pins: 0, times: 20)

        XCTAssertEqual(game.score(), 0)
    }

    func testAllOnes() {
        rollMany(pins: 1, times: 20)
        XCTAssertEqual(game.score(), 20)
    }
    
}
