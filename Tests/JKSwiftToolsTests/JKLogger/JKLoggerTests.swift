//
//  JKLoggerTests.swift
//  
//
//  Created by Kevin Trujillo on 8/5/22.
//

import XCTest
@testable import JKSwiftTools
import os

class MockedLoggable: Loggable {
	var mockLog: JKLogger!

	func setDefaultLogger() {
		mockLog = JKLogger()
	}

	func setLoggerWithSubsystemCategory(subsystem: String, category: String) {
		mockLog = JKLogger(subsystem: subsystem, category: category)
	}
}

class JKLoggerTests: XCTestCase {

	var mockedLoggable: MockedLoggable!

    override func setUpWithError() throws {
		mockedLoggable = MockedLoggable()
	}

    override func tearDownWithError() throws {}

	func test_messageWithEmoji() throws {
		let message: String = "messageWithEmoji"
		let jkLoggerLevelEmoji: JKLoggerLevelEmoji = .trace

		let result = JKLogger().messageWithEmoji(message, jkLoggerLevelEmoji)

		XCTAssertEqual("💬 \(message)", result)
		XCTAssertNotEqual("❌ \(message)", result)
	}

	func test_log_loggableExtension() throws {
		mockedLoggable = MockedLoggable()

		let log: JKLogger = mockedLoggable.log

		XCTAssertNotNil(log)
	}

	func test_init_default() throws {
		mockedLoggable.setDefaultLogger()

		let logger: Logger = mockedLoggable.mockLog.logger

		XCTAssertNotNil(logger)
	}

	func test_init_SubsystemCategory() throws {
		mockedLoggable.setLoggerWithSubsystemCategory(
			subsystem: "subsystem", category: "category"
		)

		let logger: Logger = mockedLoggable.mockLog.logger

		XCTAssertNotNil(logger)
	}
}
