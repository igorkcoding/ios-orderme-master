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
        
        let loginScreen = LogInScreen()
        loginScreen.loginLater()
        
        let restaurantListScreen = RestaurantsListScreen()
        restaurantListScreen.openRepubliqueRestaurant()
        
        let restaurantScreen = RestaurantScreen()
        restaurantScreen.callRestaurant()
        
        XCTAssert(restaurantScreen.callAlert.waitForExistence(timeout: 2) ,"Call alert is not present")
      
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
