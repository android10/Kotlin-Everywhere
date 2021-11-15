//
//  String+ExtensionsTests.swift
//  ios-appTests
//
//  Created by Fernando Cejas on 15.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import XCTest
@testable import ios_app

class String_ExtensionsTests: XCTestCase {

    func testEmptyString() {
        // Given
        let emptyString = ""
        
        // Then
        XCTAssertEqual(emptyString, String.empty)
    }
}
