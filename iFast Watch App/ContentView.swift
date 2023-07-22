//
//  ContentView.swift
//  iFast Watch App
//
//  Created by Gage Bachik on 7/22/23.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var context
    @Query private var CurrentTimer: [Timer]

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

// #Preview {
//    ContentView()
// }
