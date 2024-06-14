//
//  RestaurantScreen.swift
//  OrderMEUITests
//
//  Created by Igor on 6/13/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantScreen: BaseScreen{
  
    private let callRestOption: XCUIElement = app.collectionViews.staticTexts["+1 310-362-6115"]
    
    override init() {
        super.init()
        visible()
    }
    
    let callAlert = app.alerts["Call Republique"]
    
    public func callRestaurant(){
        callRestOption.tap()
    }
}
extension RestaurantScreen{
    
    func visible(){
        guard callRestOption.waitForExistence(timeout: vivibleTimeout)else{
            XCTFail("Restaurant list screen is not present")
            return
        }
    }
    
}
