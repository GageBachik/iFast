//
//  iFastApp.swift
//  iFast Watch App
//
//  Created by Gage Bachik on 7/22/23.
//

import SwiftUI

@main
struct iFast_Watch_AppApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
