//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Igor on 5/12/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

final class OrderMEUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBringAMenu() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let loginLaterButton = app.buttons["loginLaterButton"]
        loginLaterButton.tap()
        
        let republiqueRestaurnat = app.staticTexts["Republique"]
        republiqueRestaurnat.tap()
        
        let detectTableOption = app.collectionViews.staticTexts["Detect table"]
        detectTableOption.tap()
        
        let tableNumber = app.textFields["tableNumberTextField"]
        tableNumber.tap()
        tableNumber.typeText("3")
        let selectTableButton = app.buttons["Select table"]
        selectTableButton.tap()
        
        let callWaiterOption = app.collectionViews.staticTexts["Call a waiter"]
        callWaiterOption.tap()
        
        let waiterAlert = app.alerts["The waiter is on his way"]
        let bringMenuButton = waiterAlert.buttons["Bring a menu"]
        bringMenuButton.tap()
        
        let gotItAlert = app.alerts["Got it!"]
        XCTAssert(gotItAlert.waitForExistence(timeout: 2) ,"Got it alert not present")
        
        let okButton = gotItAlert.buttons["OK"]
        okButton.tap()
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
