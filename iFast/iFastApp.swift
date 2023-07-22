//
//  iFastApp.swift
//  iFast
//
//  Created by Gage Bachik on 7/22/23.
//

import SwiftUI

@main
struct iFastApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().modelContainer(for: Timer.self)
        }
    }
}
