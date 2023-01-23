//
//  ContentView.swift
//  scrum
//
//  Created by Dwayne on 23/1/2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack {
                    Text("Seconds elapsed")
                Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                VStack {
                    Text("Seconds Remaining test")
                    Label("600", systemImage:  "hourglass.tophalf.fill")
                }
            }
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
