//
//  Brain.swift
//  FizzBuzz
//
//  Created by Sergiy Blednov on 11/3/16.
//  Copyright © 2016 Sergiy Blednov. All rights reserved.
//

import Foundation

class Brain: NSObject {

    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisible(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisible(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisible(divisor: 15, number: number)
    }
    
    func isDivisible(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return Move.FizzBuzz
        } else if isDivisibleByFive(number: number) {
            return Move.Buzz
        } else if isDivisibleByThree(number: number){
            return Move.Fizz
        } else {
            return Move.Number
        }
    }
}
