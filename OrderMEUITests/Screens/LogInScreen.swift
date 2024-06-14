//
//  LogInScreen.swift
//  OrderMEUITests
//
//  Created by Igor on 6/13/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

class LogInScreen: BaseScreen{
    
    private let loginButton: XCUIElement = app.buttons["loginLaterButton"]
    
// When you create instance of the LogiInScreen we call initializer, which checks the presense of the button visible(), this is how we know we are on the LogInScreen
    override init() {
        super.init()
        visible()
    }
    public func loginLater() -> RestaurantsListScreen{
        loginButton.tap()
        return RestaurantsListScreen()
   //Returns an object of the RestaurantsListScreen()
    }
}
//Extending functionality of our LogInScreen class
extension LogInScreen{
    
    func visible(){
        guard loginButton.waitForExistence(timeout: vivibleTimeout)else{
            XCTFail("Login screen is not present")
            return
        }
    }
}
