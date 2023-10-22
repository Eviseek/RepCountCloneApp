//
//  SelectedExercises.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 21.10.2023.
//

import Foundation
import Combine

class RoutineObservableObject: ObservableObject {
    
    @Published var selectedExercisesList: [Exercise]
    @Published var name: String = "Unnamed Routine"
    @Published var notes: String = ""
    @Published var exercisesSets: [ExerciseSet] = []
    @Published var editClicked = false
    @Published var routineId: String
    
    init(routine: Routine?) { //TODO: delete routine and rewrite it everywhere
        
        routineId = UUID().uuidString
        
        selectedExercisesList = []
        
        if routine != nil {
            setUpExistingRoutine(routine: routine!)
        }
        
    }
    
    func setUpExistingRoutine(routine: Routine) {
        routineId = routine.id
        name = routine.name
        notes = routine.notes
        
        var foundExerciseSets: [ExerciseSet] {
            var foundex = ExerciseSet.MOCK_SETS.filter({ $0.routineId == routine.id })
            //print("found: \(foundex)") //funguje!
            return foundex
        }
        
        self.exercisesSets = foundExerciseSets
        print("my exercise sets are \(exercisesSets)")
        
        var exerciseList: [Exercise] {
            var list: [Exercise] = []
            exercisesSets.forEach { item in
                var foundExercise = Exercise.MOCK_EXERCISES.first(where: { $0.id == item.exerciseId})
                if let foundExercise = foundExercise {
                    list.append(foundExercise)
                }
            }
            return list
        }
        
        print("exercises list \(exerciseList)")
        selectedExercisesList = exerciseList
            
    }
    
    func deleteRoutine() {
        print("deleting routine")
//        if let id = routineId {
//            //find routine and delete it
//        }
    }
    
    func appendExerciseToList(_ exercise: Exercise) {
        print("appending")
        selectedExercisesList.append(exercise)
        print("list is \(selectedExercisesList)")
        updateExerciseSetArray(exerciseId: exercise.id, setCount: 1)
    }
    
    func removeExerciseFromList(_ removalId: String) {
        
        var index = 0
        var removalIndex: Int? = nil
        
        selectedExercisesList.forEach { item in
            if item.id == removalId {
                removalIndex = index
            }
            index += 1
        }
        
        if let index = removalIndex {
            selectedExercisesList.remove(at: index)
        }
        
        //TODO: remove exerciseSets
        
    }
    
    func updateExerciseSetArray(exerciseId: String, setCount: Int) {
        
        print("update with \(setCount)")
        
        if let position = exercisesSets.firstIndex(where: { $0.exerciseId == exerciseId && $0.routineId == routineId }) { //if set already created and in array then just change set count
            print("set found and changed")
            exercisesSets[position].setCount = setCount
        } else { //if set not found in array then create a new set and append it to array
            print("set not found, created and appended")
            var newSet = ExerciseSet(exerciseId: exerciseId, routineId: routineId, setCount: setCount, weight: [], reps: [], notes: "")
            exercisesSets.append(newSet)
        }
        
    }
    
    
    func getExerciseSetPosition(exerciseId: String) -> Int {
        return exercisesSets.firstIndex(where: { $0.exerciseId == exerciseId && $0.routineId == routineId }) ?? 0
    }
    
    func saveNewRoutineToDB() {
        
        //TODO: assign routineId to sets
        
        print("routine is \(name) and \(selectedExercisesList)")
        //save to db
    }
    
//    func clearObject() {
//        routineId = ""
//        selectedExercisesList = []
//        name = "Unnamed Routine"
//        notes = ""
//        exercisesSets = []
//        editClicked = false
//    }
    
    
}
