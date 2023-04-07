//
//  RemindersListViewController+Actions.swift
//  Today
//
//  Created by Felipe Christian Lautenschlager on 07/04/2023.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
