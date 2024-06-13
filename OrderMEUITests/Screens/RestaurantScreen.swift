//
//  RestaurantScreen.swift
//  OrderMEUITests
//
//  Created by Igor on 6/13/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantScreen{
    static let app = XCUIApplication()
    
    private let callRestOption: XCUIElement = app.collectionViews.staticTexts["+1 310-362-6115"]
    
    let callAlert = app.alerts["Call Republique"]
    
    public func callRestaurant(){
        callRestOption.tap()
    }
}
