//
//  JKLoggerLevelEmojiTests.swift
//  
//
//  Created by Kevin Trujillo on 8/5/22.
//

import XCTest
@testable import JKSwiftTools

class JKLoggerLevelEmojiTests: XCTestCase {
    
    override func setUpWithError() throws {}
    
    override func tearDownWithError() throws {}
    
    func test_trace() throws {
        let jkLoggerLevelEmoji: JKLoggerLevelEmoji = .trace
        
        let emoji: String = jkLoggerLevelEmoji.rawValue
        
        XCTAssertEqual("💬", emoji)
        XCTAssertNotEqual("", emoji)
    }
    
    func test_debug() throws {
        let jkLoggerLevelEmoji: JKLoggerLevelEmoji = .debug
        
        let emoji: String = jkLoggerLevelEmoji.rawValue
        
        XCTAssertEqual("🔵", emoji)
        XCTAssertNotEqual("", emoji)
    }
    
    func test_info() throws {
        let jkLoggerLevelEmoji: JKLoggerLevelEmoji = .info
        
        let emoji: String = jkLoggerLevelEmoji.rawValue
        
        XCTAssertEqual("🟢", emoji)
        XCTAssertNotEqual("", emoji)
    }
    
    func test_notice() throws {
        let jkLoggerLevelEmoji: JKLoggerLevelEmoji = .notice
        
        let emoji: String = jkLoggerLevelEmoji.rawValue
        
        XCTAssertEqual("🟡", emoji)
        XCTAssertNotEqual("", emoji)
    }
    
    func test_warning() throws {
        let jkLoggerLevelEmoji: JKLoggerLevelEmoji = .warning
        
        let emoji: String = jkLoggerLevelEmoji.rawValue
        
        XCTAssertEqual("🟠", emoji)
        XCTAssertNotEqual("", emoji)
    }
    
    func test_error() throws {
        let jkLoggerLevelEmoji: JKLoggerLevelEmoji = .error
        
        let emoji: String = jkLoggerLevelEmoji.rawValue
        
        XCTAssertEqual("🔴", emoji)
        XCTAssertNotEqual("", emoji)
    }
    
    func test_fault() throws {
        let jkLoggerLevelEmoji: JKLoggerLevelEmoji = .fault
        
        let emoji: String = jkLoggerLevelEmoji.rawValue
        
        XCTAssertEqual("🟣", emoji)
        XCTAssertNotEqual("", emoji)
    }
    
    func test_critical() throws {
        let jkLoggerLevelEmoji: JKLoggerLevelEmoji = .critical
        
        let emoji: String = jkLoggerLevelEmoji.rawValue
        
        XCTAssertEqual("⚫️", emoji)
        XCTAssertNotEqual("", emoji)
    }
}
