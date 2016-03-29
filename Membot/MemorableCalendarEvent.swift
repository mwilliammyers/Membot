//
//  MemorableCalendarEvent.swift
//  Membot
//
//  Created by William Myers on 3/8/16.
//  Copyright © 2016 Sneakywolf. All rights reserved.
//

import Foundation
import EventKit
import UIKit

class MemorableCalendarEvent: Memorable, CustomDebugStringConvertible {

    var uniqueId: String

    var adapter: Adapter
    var metadata: Any
    var displayableData: Any?

    var creationDate: NSDate
    var tags: [String]?
    var isFavorite: Bool?

    init(uniqueId: String, adapter: Adapter, metadata: EKEvent, creationDate: NSDate) {
        self.uniqueId = uniqueId
        self.adapter = adapter
        self.metadata = metadata
        self.creationDate = creationDate
    }

    init(uniqueId: String, adapter: Adapter, metadata: EKEvent, creationDate: NSDate, tags: [String], isFavorite: Bool) {
        self.uniqueId = uniqueId
        self.adapter = adapter
        self.metadata = metadata
        self.creationDate = creationDate
        self.tags = tags
        self.isFavorite = isFavorite
    }

    var debugDescription: String {
//        return String(format: "MemorableCalendarEvent<title: \((metadata as? EKEvent)?.title), uniqueId: \(uniqueId), creationDate: \(creationDate), tags: \(tags), isFavorite \(isFavorite) %p>\n", arguments: [unsafeAddressOf(self)])
                return "\nMemorableCalendarEvent<title: \((metadata as? EKEvent)?.title), uniqueId: \(uniqueId), creationDate: \(creationDate)>"
    }
}