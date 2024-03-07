//
//  BullseyeApp.swift
//  Bullseye
//
//  Created by Julian Villar on 7/9/23.
//

import SwiftUI

@main
struct BullseyeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
