//
//  Country_ListUITests.swift
//  Country ListUITests
//
//  Created by Mattia La Spina on 8/7/22.
//

import XCTest

class Country_ListUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }

    func testLaunchList() throws {
        let app = XCUIApplication()
        app.launch()
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
