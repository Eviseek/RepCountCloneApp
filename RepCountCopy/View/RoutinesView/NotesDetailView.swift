//
//  NotesDetailView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 23.10.2023.
//

import SwiftUI

struct NotesDetailView: View {
    
    @EnvironmentObject var routineObject: RoutineObservableObject
    
    @State private var noteText: String = ""
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .leading) {
                if noteText.isEmpty {
                    Text("Enter your note")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(.systemGray2))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, 8)
                        .padding(.leading, 2)
                }
                TextEditor(text: $noteText)
                    .scrollContentBackground(.hidden)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding(.horizontal)
            .padding(.bottom)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGray6))
        .navigationTitle("Notes")
        .toolbar {
            if noteText.count > 0 {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        routineObject.updateRoutineNote(note: noteText)
                        dismiss()
                    }
                }
            }
        }
    }
}

struct NotesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NotesDetailView()
            .environmentObject(RoutineObservableObject(routine: nil))
    }
}
