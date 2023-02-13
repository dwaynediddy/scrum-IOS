//
//  scrumApp.swift
//  scrum
//
//  Created by Dwayne on 23/1/2023.
//

import SwiftUI

@main
struct ScrumApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums) {
                    Task {
                        do {
                            try await ScrumStore.save(scrums: store.scrums)
                        } catch {
                            fatalError("Error saving scrums")
                        }
                    }
                }
            }
            .task {
                do {
                    store.scrums = try await ScrumStore.load()
                } catch {
                    fatalError("Error Loading Scrums")
                }
            }
        }
    }
}
