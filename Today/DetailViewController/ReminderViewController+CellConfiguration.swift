//
//  ReminderViewController+CellConfiguration.swift
//  Today
//
//  Created by Felipe Christian Lautenschlager on 09/04/2023.
//

import UIKit

extension ReminderViewController {
    func defaultConfiguration(for cell: UICollectionViewListCell, at row: Row) -> UIListContentConfiguration {
        var contentConfiguration = cell.defaultContentConfiguration()
        contentConfiguration.text = text(for: row)
        contentConfiguration.textProperties.font = UIFont.preferredFont(forTextStyle: row.textStyle)
        contentConfiguration.image = row.image
        return contentConfiguration
    }

    func headerConfiguration(for cell: UICollectionViewListCell, with title: String) -> UIListContentConfiguration {
        var contentConfiguration = cell.defaultContentConfiguration()
        contentConfiguration.text = title
        return contentConfiguration
    }

    func titleConfiguration(for cell: UICollectionViewListCell, with title: String?) -> TextFieldContentView.Confituration {
        var contentConfiguration = cell.textFieldConfiguration()
        contentConfiguration.text = title
        return contentConfiguration
    }

    func notesConfiguration(for cell: UICollectionViewListCell, with notes: String?) -> TextViewContentView.Configuration {
        var contentConfiguration = cell.textViewConfiguration()
        contentConfiguration.text = notes
        return contentConfiguration
    }

    func dateConfiguration(for cell: UICollectionViewListCell, with date: Date) -> DatePickerContentView.Configuration {
        var contentConfiguration = cell.datePickerConfiguration()
        contentConfiguration.date = date
        return contentConfiguration
    }

    func text(for row: Row) -> String? {
        switch row {
        case .date: return reminder.dueDate.dayText
        case .notes: return reminder.notes
        case .title: return reminder.title
        case .time: return reminder.dueDate.formatted(date: .omitted, time: .shortened)
        default: return nil
        }
    }
}
