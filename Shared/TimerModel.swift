//
//  TimerModel.swift
//  iFast
//
//  Created by Gage Bachik on 7/22/23.
//

import Foundation
import SwiftData
import SwiftUI

@Model
class TimerModel {
    var id: UUID
    var startDate: Date
    var endDate: Date
    init(endDate: Date) {
        self.id = UUID()
        self.startDate = Date.now
        self.endDate = endDate
    }
}
