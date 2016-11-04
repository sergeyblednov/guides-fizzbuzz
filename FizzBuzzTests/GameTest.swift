//
//  GameTest.swift
//  FizzBuzz
//
//  Created by Sergiy Blednov on 11/3/16.
//  Copyright © 2016 Sergiy Blednov. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTest: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, false)
    }
    
    func testIsBuzzMoveIsRight() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, true)
    }
    
    func testIsBuzzMoveIsWrong() {
        game.score = 5
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, false)
    }
    
    func testIsFizzBuzzMoveIsRight() {
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, true)
    }
    
    func testIsFizzBuzzMoveIsWrong() {
        game.score = 5
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, false)
    }
    
    func testIsNumberMoveIsRight() {
        game.score = 1
        let result = game.play(move: "2")
        XCTAssertEqual(result, true)
    }
    
    func testIsNumberMoveIsWrong() {
        game.score = 2
        let result = game.play(move: "3")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
}
