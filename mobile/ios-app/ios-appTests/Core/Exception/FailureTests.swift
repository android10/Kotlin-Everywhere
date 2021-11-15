//
//  FailureTestCase.swift
//  ios-appTests
//
//  Created by Fernando Cejas on 15.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import XCTest
@testable import ios_app

class FailureTests: XCTestCase {

    func testEmptyFailureConstruction() {
        // Given
        let failure = Failure.empty()
        
        // Then
        XCTAssertEqual(failure.isEmpty(), true)
        XCTAssertEqual(failure.title, String.empty)
        XCTAssertEqual(failure.description, String.empty)
    }
    
    func testEmptyFailureManualConstruction() {
        // Given
        let failure = Failure(title: String.empty, description: String.empty)
        
        // Then
        XCTAssertEqual(failure.isEmpty(), true)
    }
    
    func testNonEmptyConstruction() {
        // Given
        let failureWithEmptyTitle = Failure(title: String.empty, description: "description")
        let failureWithEmptyDescription = Failure(title: "title", description: String.empty)
        
        // Then
        XCTAssertEqual(failureWithEmptyTitle.isEmpty(), false)
        XCTAssertEqual(failureWithEmptyDescription.isEmpty(), false)
    }
}
