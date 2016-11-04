//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Sergiy Blednov on 11/4/16.
//  Copyright © 2016 Sergiy Blednov. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() {
        XCUIApplication().buttons["numberButton"].tap()
        let newScore = XCUIApplication().buttons["numberButton"].label
        XCTAssertEqual(newScore, "1")
    }
    
//    func testDoubleTapNumberButtonIncrementsScore() {
//        
//        let numberbuttonButton = XCUIApplication().buttons["numberButton"]
//        numberbuttonButton.tap()
//        numberbuttonButton.tap()
//        let newScore = numberbuttonButton.label
//        XCTAssertEqual(newScore, "2")
//    }
    
}
