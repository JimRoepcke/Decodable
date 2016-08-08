//
//  NSValueDecodableTests.swift
//  Decodable
//
//  Created by Johannes Lund on 2016-01-06.
//  Copyright © 2016 anviking. All rights reserved.
//

import XCTest
@testable import Decodable

class NSValueDecodableTests: XCTestCase {
    func testIntegerDecodingFromInt64() {
        let number = NSNumber(longLong: 100)
        XCTAssertEqual(try! Int64.decodeJSON(number), number.longLongValue)
        XCTAssertEqual(try! Int32.decodeJSON(number), number.intValue)
        XCTAssertEqual(try! Int16.decodeJSON(number), number.shortValue)
        XCTAssertEqual(try! Int8.decodeJSON(number), number.charValue)
        
        XCTAssertEqual(try! UInt64.decodeJSON(number), number.unsignedLongLongValue)
        XCTAssertEqual(try! UInt32.decodeJSON(number), number.unsignedIntValue)
        XCTAssertEqual(try! UInt16.decodeJSON(number), number.unsignedShortValue)
        XCTAssertEqual(try! UInt8.decodeJSON(number), number.unsignedCharValue)
    }
    
    func testIntegerDecodingFromInt32() {
        let number = NSNumber(int: 100)
        XCTAssertEqual(try! Int64.decodeJSON(number), number.longLongValue)
        XCTAssertEqual(try! Int32.decodeJSON(number), number.intValue)
        XCTAssertEqual(try! Int16.decodeJSON(number), number.shortValue)
        XCTAssertEqual(try! Int8.decodeJSON(number), number.charValue)
        
        XCTAssertEqual(try! UInt64.decodeJSON(number), number.unsignedLongLongValue)
        XCTAssertEqual(try! UInt32.decodeJSON(number), number.unsignedIntValue)
        XCTAssertEqual(try! UInt16.decodeJSON(number), number.unsignedShortValue)
        XCTAssertEqual(try! UInt8.decodeJSON(number), number.unsignedCharValue)
    }
    
    func testIntegerDecodingFromInt8() {
        let number = NSNumber(char: 100)
        
        XCTAssertEqual(try! Int64.decodeJSON(number), number.longLongValue)
        XCTAssertEqual(try! Int32.decodeJSON(number), number.intValue)
        XCTAssertEqual(try! Int16.decodeJSON(number), number.shortValue)
        XCTAssertEqual(try! Int8.decodeJSON(number), number.charValue)
        
        XCTAssertEqual(try! UInt64.decodeJSON(number), number.unsignedLongLongValue)
        XCTAssertEqual(try! UInt32.decodeJSON(number), number.unsignedIntValue)
        XCTAssertEqual(try! UInt16.decodeJSON(number), number.unsignedShortValue)
        XCTAssertEqual(try! UInt8.decodeJSON(number), number.unsignedCharValue)
    }
}