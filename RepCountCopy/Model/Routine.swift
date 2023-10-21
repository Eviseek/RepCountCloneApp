//
//  Routine.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 17.10.2023.
//

import Foundation

struct Routine: Identifiable, Codable {
    let id: String
    var name: String
   // var exercises: [ExerciseRoutine]
  //  var target: TargetTypes
    var notes: String
}

extension Routine {
    
    static var MOCK_ROUTINES: [Routine] = [
        .init(id: UUID().uuidString, name: "Ab Burner", notes: ""),
        .init(id: UUID().uuidString, name: "Winter Bulk", notes: "")
    ]
    
}
