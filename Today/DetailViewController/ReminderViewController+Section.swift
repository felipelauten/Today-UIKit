//
//  ReminderViewController+Section.swift
//  Today
//
//  Created by Felipe Christian Lautenschlager on 08/04/2023.
//

import Foundation

extension ReminderViewController {
    enum Section: Int, Hashable {
        case view
        case title
        case date
        case notes

        var name: String {
            switch self {
            case .view: return ""
            case .title:
                return NSLocalizedString("Title", comment: "Title section name")
            case .date:
                return NSLocalizedString("Date", comment: "Title section dade")
            case .notes:
                return NSLocalizedString("Notes", comment: "Title section notes")
            }
        }
    }
}
