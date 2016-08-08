//
//  DecodableExtensionTests.swift
//  Decodable
//
//  Created by FJBelchi on 13/07/15.
//  Copyright © 2015 anviking. All rights reserved.
//

import XCTest
@testable import Decodable

class DecodableExtensionTests: XCTestCase {
    
    // MARK: String
    func testStringDecodableSuccess() {
        //given
        let anyObject = "hello"
        //when
        let string = try! String.decodeJSON(anyObject)
        //then
        XCTAssertEqual(string, anyObject)
    }
    
    func testStringDecodableFail() {
        //given
        let anyObject = 0
        //when
        do {
            try String.decodeJSON(anyObject)
        } catch is TypeMismatchError {
            //then
            XCTAssertTrue(true)
        } catch {
            XCTFail("should not throw this exception")
        }
    }
    
    // MARK: Int
    func testIntDecodable() {
        //given
        let anyObject = 0
        //when
        let int = try! Int.decodeJSON(anyObject)
        //then
        XCTAssertEqual(int, anyObject)
    }
    
    func testIntDecodableFail() {
        //given
        let anyObject = ""
        //when
        do {
            try Int.decodeJSON(anyObject)
        } catch is TypeMismatchError {
            //then
            XCTAssertTrue(true)
        } catch {
            XCTFail("should not throw this exception")
        }
    }

    // MARK: Double
    func testDoubleDecodable() {
        //given
        let anyObject = 0.5
        //when
        let double = try! Double.decodeJSON(anyObject)
        //then
        XCTAssertEqual(double, anyObject)
    }
    
    func testDoubleDecodableFail() {
        //given
        let anyObject = ""
        //when
        do {
            try Double.decodeJSON(anyObject)
        } catch is TypeMismatchError {
            //then
            XCTAssertTrue(true)
        } catch {
            XCTFail("should not throw this exception")
        }
    }
    
    // MARK: Bool
    func testBoolDecodable() {
        //given
        let anyObject = true
        //when
        let bool = try! Bool.decodeJSON(anyObject)
        //then
        XCTAssertEqual(bool, anyObject)
    }
    
    func testBoolDecodableFail() {
        //given
        let anyObject = ""
        //when
        do {
            try Bool.decodeJSON(anyObject)
        } catch is TypeMismatchError {
            //then
            XCTAssertTrue(true)
        } catch {
            XCTFail("should not throw this exception")
        }
    }
}