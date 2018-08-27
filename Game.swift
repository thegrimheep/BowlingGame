//
//  Game.swift
//  BowlingGame
//
//  Created by David Porter on 8/27/18.
//  Copyright © 2018 David Porter. All rights reserved.
//

import Foundation

class Game {
    private var theScore = 0
    func roll(_ pins: Int) {
        theScore += pins
    }

    func score() -> Int {
        return theScore
    }

}
