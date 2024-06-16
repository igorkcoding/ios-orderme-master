//
//  RestaurantScreen.swift
//  OrderMEUITests
//
//  Created by Igor on 6/13/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantScreen: BaseScreen{
    
    enum RestaurantOption {
        case detectTabel
        case callAWaiter
        case callRestaurant
    }
    
    private let callRestOption: XCUIElement = app.collectionViews.staticTexts["+1 310-362-6115"]
    private let detectTableOption = app.collectionViews.staticTexts["Detect table"]
    private let callAWaiterOption = app.collectionViews.staticTexts["Call a waiter"]
    
    override init() {
        super.init()
        visible()
    }
    
    public func choose(option: RestaurantOption){
        switch option {
        case .detectTabel:
            detectTableOption.tap()
        case .callAWaiter:
            callAWaiterOption.tap()
        case .callRestaurant:
            callRestOption.tap()
        }
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
