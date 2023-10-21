//
//  Workout.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 17.10.2023.
//

import Foundation

struct Workout: Identifiable, Codable {
    var id: String
    var selectedRoutine: String?
    var selectedExercises: [String]?
    //TODO: change to Timestamp to save to DB
    var startTime: Date
    var endTime: Date
    var notes: String
}

extension Workout {
    
    static var MOCK_WORKOUTS: [Workout] = [
        .init(id: UUID().uuidString, selectedRoutine: Routine.MOCK_ROUTINES[0].id, startTime: Date(), endTime: Date(), notes: ""),
        .init(id: UUID().uuidString, selectedRoutine: Routine.MOCK_ROUTINES[1].id, startTime: Date(), endTime: Date(), notes: ""),
        .init(id: UUID().uuidString, selectedRoutine: Routine.MOCK_ROUTINES[0].id, startTime: Date(), endTime: Date(), notes: ""),
        .init(id: UUID().uuidString, selectedRoutine: Routine.MOCK_ROUTINES[1].id, startTime: Date(), endTime: Date(), notes: "")
    ]
    
}
