//
//  RestaurantsList.swift
//  OrderMEUITests
//
//  Created by Igor on 6/13/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantsListScreen: BaseScreen, TabBarProtocol{
    
    private let republiqueRest: XCUIElement = app.staticTexts["Republique"]
    
    override init() {
        super.init()
        visible()
    }  
    
    public func openRepubliqueRestaurant() -> RestaurantScreen{
        republiqueRest.tap()
        return RestaurantScreen()
    }
}
extension RestaurantsListScreen{
    func visible(){
        guard republiqueRest.waitForExistence(timeout: vivibleTimeout)else{
            XCTFail("Restaurant list screen is not present")
            return
        }
    }
    
}

