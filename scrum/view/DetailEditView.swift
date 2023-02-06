//
//  DetailEditView.swift
//  scrum
//
//  Created by Dwayne on 27/1/2023.
//
import SwiftUI

struct DetailEditView: View {
    @Binding var data: DailyScrum.Data
    @State private var newAttendee = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $data.title)
                HStack {
                    Slider(value: $data.lengthInMinutes, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(Int(data.lengthInMinutes)) minutes")
                    .accessibilityHidden(true)
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) minutes")
                }
                ThemePicker(selection: $data.theme)
            }
            Section(header: Text("Attendees")) {
                ForEach(data.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    data.attendees.remove(atOffsets: indices)
                    }
                HStack {
                    TextField("names", text: $newAttendee)
                }
                Button(action: {
                    withAnimation {
                        let attendee = DailyScrum.Attendee(name: newAttendee)
                        data.attendees.append(attendee)
                        newAttendee = ""
                    }
                }) {

                    Image(systemName: "plus.circle.fill")
                        .accessibilityLabel("add attendee")
                }
                .disabled(newAttendee.isEmpty)
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView(data: .constant(DailyScrum.sampleData[0].data))
    }
}
