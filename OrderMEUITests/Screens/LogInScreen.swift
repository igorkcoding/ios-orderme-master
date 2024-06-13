//
//  LogInScreen.swift
//  OrderMEUITests
//
//  Created by Igor on 6/13/24.
//  Copyright © 2024 Boris Gurtovoy. All rights reserved.
//

import XCTest

class LogInScreen{
    static let app = XCUIApplication()
    
    private let loginButton: XCUIElement = app.buttons["loginLaterButton"]
    
    public func loginLater(){
        loginButton.tap()
    }
}
