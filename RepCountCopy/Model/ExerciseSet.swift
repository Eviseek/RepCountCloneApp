//
//  Set.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 17.10.2023.
//

import Foundation
//import Firebase

struct ExerciseSet: Codable {
    var exerciseId: String
    var routineId: String?
    var setCount: Int
    var weight: [Double]
    var reps: [Int]
    var notes: String
   // var time: Timestamp
}


extension ExerciseSet {
    
    static var MOCK_SETS: [ExerciseSet] = [
        .init(exerciseId: Exercise.MOCK_EXERCISES[0].id, routineId: Routine.MOCK_ROUTINES[0].id, setCount: 4, weight: [0.0, 0.0, 0.0], reps: [20, 18, 15], notes: ""),
        .init(exerciseId: Exercise.MOCK_EXERCISES[1].id, routineId: Routine.MOCK_ROUTINES[0].id, setCount: 5, weight: [0.0, 0.0, 0.0], reps: [25, 22, 20], notes: ""),
        .init(exerciseId: Exercise.MOCK_EXERCISES[2].id, routineId: Routine.MOCK_ROUTINES[0].id, setCount: 6, weight: [1.5, 1.5, 1.0], reps: [10, 8, 5], notes: ""),
        .init(exerciseId: Exercise.MOCK_EXERCISES[2].id, routineId: Routine.MOCK_ROUTINES[1].id, setCount: 7, weight: [1.5, 1.5, 1.0], reps: [10, 8, 5], notes: ""),
        .init(exerciseId: Exercise.MOCK_EXERCISES[3].id, routineId: Routine.MOCK_ROUTINES[1].id, setCount: 9, weight: [1.5, 1.5, 1.0], reps: [10, 8, 5], notes: "")
      //  .init(exerciseId: Exercise.MOCK_EXERCISES[1].id, weight: 0, reps: 15, notes: "")
      //  .init(exerciseId: Exercise.MOCK_EXERCISES[2].id, weight: 0, reps: 18, notes: "")
    ]
    
}
