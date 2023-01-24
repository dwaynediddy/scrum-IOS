//
//  scrumApp.swift
//  scrum
//
//  Created by Dwayne on 23/1/2023.
//

import SwiftUI

@main
struct scrumApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumView(scrums: DailyScrum.sampleData)
        }
    }
}
