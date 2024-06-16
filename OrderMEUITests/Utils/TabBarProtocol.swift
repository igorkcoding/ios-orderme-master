//
//  File.swift
//  OrderMEUITests
//
//  Created by Igor on 6/15/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

protocol TabBarProtocol {
    
    func tapHome() -> RestaurantsListScreen
    func tapMyReservations() -> MyReservationsScreen
    func tapMyOrders()
    
    
}
extension TabBarProtocol{
    
    func tapHome() -> RestaurantsListScreen {
        XCUIApplication().tabBars["Tab Bar"].buttons["Home"].tap()
        return RestaurantsListScreen()
    }
    func tapMyReservations() -> MyReservationsScreen {
        XCUIApplication().tabBars["Tab Bar"].buttons["My reservations"].tap()
        return MyReservationsScreen()    }
    
    func tapMyOrders(){
        XCUIApplication().tabBars["Tab Bar"].buttons["My orders"].tap()
    }
}
