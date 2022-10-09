//
//  TodoApp.swift
//  Todo
//
//  Created by Phạm Minh Khuê on 09/10/2022.
//

import SwiftUI

@main
struct TodoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
