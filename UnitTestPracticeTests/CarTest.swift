//
//  CarTest.swift
//  UnitTestPracticeTests
//
//  Created by Eloisa Falcão on 07/04/20.
//  Copyright © 2020 Eloisa Falcão. All rights reserved.
//

import XCTest
//Importando todos os arquivos de uma vez 
@testable import UnitTestPractice

class CarTest: XCTestCase {

    var ferrari: Car!
    var jeep: Car!
    var honda: Car!

    override func setUp() {
        super.setUp()

        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
    }

    override func tearDown() {
        super.tearDown()

        ferrari = nil
        jeep = nil
        honda = nil
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testSportFasterThanJeep() {
        let minutes = 60
        //1 start ferrari
        ferrari.start(minutes: minutes)
        //2 start jeep
        jeep.start(minutes: minutes)
        //Test it
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
}
