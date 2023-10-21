//
//  Exercise.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 17.10.2023.
//

import Foundation

struct Exercise: Identifiable, Codable {
    let id: String
    var name: String
    var categoryId: String
}


extension Exercise {
    
    static var MOCK_EXERCISES: [Exercise] = [
        .init(id: NSUUID().uuidString, name: "Crunches", categoryId: ExerciseCategory.MOCK_CATEGORIES[0].id),
        .init(id: NSUUID().uuidString, name: "Hollow Hold", categoryId: ExerciseCategory.MOCK_CATEGORIES[0].id),
        .init(id: NSUUID().uuidString, name: "Leg Raises", categoryId: ExerciseCategory.MOCK_CATEGORIES[0].id),
        .init(id: NSUUID().uuidString, name: "Squats", categoryId: ExerciseCategory.MOCK_CATEGORIES[5].id),
        .init(id: NSUUID().uuidString, name: "Hip Thrusts", categoryId: ExerciseCategory.MOCK_CATEGORIES[5].id),
        .init(id: NSUUID().uuidString, name: "Bench", categoryId: ExerciseCategory.MOCK_CATEGORIES[4].id),
        .init(id: NSUUID().uuidString, name: "Test caption", categoryId: ExerciseCategory.MOCK_CATEGORIES[4].id),
        .init(id: NSUUID().uuidString, name: "Tricep Extensions", categoryId: ExerciseCategory.MOCK_CATEGORIES[7].id),
        .init(id: NSUUID().uuidString, name: "Shoulder Press", categoryId: ExerciseCategory.MOCK_CATEGORIES[6].id),
        .init(id: NSUUID().uuidString, name: "Run", categoryId: ExerciseCategory.MOCK_CATEGORIES[3].id),
        .init(id: NSUUID().uuidString, name: "Back Row", categoryId: ExerciseCategory.MOCK_CATEGORIES[1].id),
    ]
    
}

