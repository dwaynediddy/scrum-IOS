//
//  scrumApp.swift
//  scrum
//
//  Created by Dwayne on 23/1/2023.
//

import SwiftUI

@main
struct ScrumApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
