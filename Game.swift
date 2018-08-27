//
//  Game.swift
//  BowlingGame
//
//  Created by David Porter on 8/27/18.
//  Copyright © 2018 David Porter. All rights reserved.
//

import Foundation

class Game {
    private var rolls = [Int](repeating: 0, count: 21)
    private var currentRoll = 0

    func roll(_ pins: Int) {
        rolls[currentRoll] = pins
        currentRoll += 1
    }

    func score() -> Int {
        var score = 0
        var i = 0
        for _ in 1...10 {
            // spare
            if rolls[i] + rolls[i + 1] == 10 {
                score += 10 + rolls[i + 2]
                i += 2
            } else {
            score += rolls[i] + rolls[i + 1]
            i += 2
            }
        }
        return score
    }

}
