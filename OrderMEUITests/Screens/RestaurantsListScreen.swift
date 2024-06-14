//
//  RestaurantsList.swift
//  OrderMEUITests
//
//  Created by Igor on 6/13/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantsListScreen: BaseScreen{
    
    private let republiqueRest: XCUIElement = app.staticTexts["Republique"]
    
    public func openRepubliqueRestaurant(){
        republiqueRest.tap()
    }
}
