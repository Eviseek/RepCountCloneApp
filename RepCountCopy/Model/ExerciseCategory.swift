//
//  ExerciseCategory.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 21.10.2023.
//

import Foundation

struct ExerciseCategory: Identifiable, Codable {
    let id: String
    var name: String
}

extension ExerciseCategory {
    
    static var MOCK_CATEGORIES: [ExerciseCategory] = [
        .init(id: UUID().uuidString, name: "Abs"),
        .init(id: UUID().uuidString, name: "Back"),
        .init(id: UUID().uuidString, name: "Biceps"),
        .init(id: UUID().uuidString, name: "Cardio"),
        .init(id: UUID().uuidString, name: "Chest"),
        .init(id: UUID().uuidString, name: "Legs"),
        .init(id: UUID().uuidString, name: "Shoulders"),
        .init(id: UUID().uuidString, name: "Triceps")
    ]
    
}
