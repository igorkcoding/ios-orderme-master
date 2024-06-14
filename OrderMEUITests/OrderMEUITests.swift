//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Igor on 5/12/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

final class OrderMEUITests: BaseTest {

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCallRestaurant() throws {
        // UI tests must launch the application that they test.
        
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
