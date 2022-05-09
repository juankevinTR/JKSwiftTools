//
//  JKLoggerLevelEmoji.swift
//  
//
//  Created by Juan Kevin Trujillo on 8/5/22.
//

import Foundation

public enum JKLoggerLevelEmoji: String {

    /// Appropriate for messages that contain information only when debugging a program.
    case trace = "💬"

    /// Appropriate for messages that contain information normally of use only when debugging a program.
    case debug = "🔵"

    /// Appropriate for informational messages.
    case info = "🟢"

    /// Appropriate for conditions that are not error conditions, but that may require special handling.
    case notice = "🟡"

    /// Appropriate for messages that are not error conditions, but more severe than ``.notice``.
    case warning = "🟠"

    /// Appropriate for error conditions.
    case error = "🔴"

    /// Appropriate for error conditions, but more severe than ``.error``.
    case fault = "🟣"

    /// Appropriate for critical error conditions that usually require immediate attention.
    case critical = "⚫️"
}
