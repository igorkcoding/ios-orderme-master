//
//  RestaurantsList.swift
//  OrderMEUITests
//
//  Created by Igor on 6/13/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantsListScreen{
    static let app = XCUIApplication()
    
    private let republiqueRest: XCUIElement = app.staticTexts["Republique"]
    
    public func openRepubliqueRestaurant(){
        republiqueRest.tap()
    }
}
