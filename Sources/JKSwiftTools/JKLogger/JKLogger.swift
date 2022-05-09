//
//  JKLogger.swift
//  
//
//  Created by Juan Kevin Trujillo on 8/5/22.
//

import Foundation
import os

public protocol Loggable {
    var log: JKLogger { get }
}

public extension Loggable {
    var log: JKLogger {
        return JKLogger(
            subsystem: "com.juankevintrujillo.swift.jklogger",
            category: String(describing: Self.self)
        )
    }
}

public struct JKLogger {
    
    /// Global Logger variable.
    let logger: Logger
    
    /// Creates a logger for logging to the default subsystem.
    public init() {
        logger = Logger()
    }
    
    /// Creates a logger using the specified subsystem and category.
    ///
    /// - Parameters:
    ///   - subsystem: A subsystem or bundle ID string
    ///   - category: A category/class string
    public init(subsystem: String, category: String) {
        logger = Logger(subsystem: subsystem, category: category)
    }
    
    /// Include an Emoji at the beginner of an string
    ///
    /// - Parameters:
    ///   - message: A string.
    ///   - emoji: A ``JKLoggerLevelEmoji`` case instance.
    ///
    /// - Returns: A string with an emoji at the beginner.
    func messageWithEmoji(
        _ message: String,
        _ emoji: JKLoggerLevelEmoji
    ) -> String {
        return "\(emoji.rawValue) \(message)"
    }
    
    /// Writes a message to the log using the default log type.
    ///
    /// - Parameter message: A string interpolation.
    public func notice(_ message: String) {
        logger.notice("\(messageWithEmoji(message, .notice))")
    }
    
    /// Writes a debug message to the log.
    ///
    /// - Parameter message: A string interpolation.
    public func debug(_ message: String) {
        logger.debug("\(messageWithEmoji(message, .debug))")
    }
    
    /// Writes a trace message to the log.
    ///
    /// - Parameter message: A string interpolation.
    public func trace(_ message: String) {
        logger.trace("\(messageWithEmoji(message, .trace))")
    }
    
    /// Writes an informative message to the log.
    ///
    /// - Parameter message: A string interpolation.
    public func info(_ message: String) {
        logger.info("\(messageWithEmoji(message, .info))")
    }
    
    /// Writes information about an error to the log.
    ///
    /// - Parameter message: A string interpolation.
    public func error(_ message: String) {
        logger.error("\(messageWithEmoji(message, .error))")
    }
    
    /// Writes information about a warning to the log.
    ///
    /// - Parameter message: A string interpolation.
    public func warning(_ message: String) {
        logger.warning("\(messageWithEmoji(message, .warning))")
    }
    
    /// Writes a message to the log about a bug that occurs when your app executes.
    ///
    /// - Parameter message: A string interpolation.
    public func fault(_ message: String) {
        logger.fault("\(messageWithEmoji(message, .fault))")
    }
    
    /// Writes a message to the log about a critical event in your app’s execution.
    ///
    /// - Parameter message: A string interpolation.
    public func critical(_ message: String) {
        logger.critical("\(messageWithEmoji(message, .critical))")
    }
}
