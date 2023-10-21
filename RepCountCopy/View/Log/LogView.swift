//
//  LogView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct LogView: View {
    
    var workouts: [Workout]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    LogMonthOverview(workouts: [Workout.MOCK_WORKOUTS[0], Workout.MOCK_WORKOUTS[1], Workout.MOCK_WORKOUTS[1], Workout.MOCK_WORKOUTS[0]])
                }
                .padding(.horizontal, 10)
            }
            .navigationTitle("Log")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Edit") {
                        print("Edit tapped!")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //workout
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .padding(.horizontal, 5)
            .background(Color(.systemGray6))
        }
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView(workouts: [Workout.MOCK_WORKOUTS[0], Workout.MOCK_WORKOUTS[1], Workout.MOCK_WORKOUTS[1], Workout.MOCK_WORKOUTS[0]])
    }
}
