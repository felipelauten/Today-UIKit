//
//  EKEventStore+AsyncFetch.swift
//  Today
//
//  Created by Felipe Christian Lautenschlager on 17/04/2023.
//

import EventKit

extension EKEventStore {
    func reminders(matching predicate: NSPredicate) async throws -> [EKReminder] {
        try await withCheckedThrowingContinuation({ continuation in
            fetchReminders(matching: predicate) { reminders in
                if let reminders {
                    continuation.resume(returning: reminders)
                } else {
                    continuation.resume(throwing: TodayError.failedReadingReminders)
                }
            }
        })
    }
}
