//
//  CycleModel.swift
//  iFast
//
//  Created by Gage Bachik on 7/22/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "iFast")

    init() {
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Coare Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
