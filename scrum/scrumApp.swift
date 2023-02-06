//
//  scrumApp.swift
//  scrum
//
//  Created by Dwayne on 23/1/2023.
//

import SwiftUI

@main
struct scrumApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumView(scrums: $scrums)
            }
        }
    }
}
