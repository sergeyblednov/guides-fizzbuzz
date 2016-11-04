//
//  Game.swift
//  FizzBuzz
//
//  Created by Sergiy Blednov on 11/3/16.
//  Copyright © 2016 Sergiy Blednov. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    var brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: String) -> Bool {
        let result = brain.check(number: score + 1)
        if result == move {
            score = score + 1
            return true
        } else {
            return false
        }
    }
    
}
