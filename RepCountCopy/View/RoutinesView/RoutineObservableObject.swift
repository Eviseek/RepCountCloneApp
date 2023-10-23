//
//  SelectedExercises.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 21.10.2023.
//

import Foundation
import Combine

class RoutineObservableObject: ObservableObject {
    
    @Published var selectedExercisesList: [Exercise] = []
   // @Published var name: String = "Unnamed Routine"
  //  @Published var notes: String = ""
    @Published var exercisesSets: [ExerciseSet] = []
    @Published var editClicked = false
 //   @Published var routineId: String
    @Published var routine: Routine
    
    init(routine: Routine?) { //TODO: delete routine and rewrite it everywhere
        
        if let oldRoutine = routine {
            self.routine = Routine(id: oldRoutine.id, name: oldRoutine.name, notes: oldRoutine.notes)
            self.setUpExistingRoutine(routine: routine!)
        } else {
            self.routine = Routine(id: UUID().uuidString, name: "Unnamed Routine", notes: "")
        }
        
    }
    
    func setUpExistingRoutine(routine: Routine) {
    
        var foundExerciseSets: [ExerciseSet] {
            let foundex = ExerciseSet.MOCK_SETS.filter({ $0.routineId == routine.id })
            //print("found: \(foundex)") //funguje!
            return foundex
        }
        
        self.exercisesSets = foundExerciseSets
        print("my exercise sets are \(exercisesSets)")
        
        var exerciseList: [Exercise] {
            var list: [Exercise] = []
            exercisesSets.forEach { item in
                let foundExercise = Exercise.MOCK_EXERCISES.first(where: { $0.id == item.exerciseId})
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
    
    func updateRoutineNote(note: String) {
        self.routine.notes = note
    }
    
    func removeExerciseFromList(_ exerciseId: String) {
        
        if let setPosition = exercisesSets.firstIndex(where: { $0.exerciseId == exerciseId && $0.routineId == self.routine.id }) {
            print("set found and deleted")
            exercisesSets.remove(at: setPosition)
        }
        
        if let position = selectedExercisesList.firstIndex(where: { $0.id == exerciseId }) {
            selectedExercisesList.remove(at: position)
        }
        
        //TODO: remove exerciseSets
        
    }
    
    func updateExerciseSetArray(exerciseId: String, setCount: Int) {
        
        print("update with \(setCount)")
        
        if let position = exercisesSets.firstIndex(where: { $0.exerciseId == exerciseId && $0.routineId == self.routine.id }) { //if set already created and in array then just change set count
            print("set found and changed")
            exercisesSets[position].setCount = setCount
        } else { //if set not found in array then create a new set and append it to array
            print("set not found, created and appended")
            let newSet = ExerciseSet(exerciseId: exerciseId, routineId: self.routine.id, setCount: setCount, weight: [], reps: [], notes: "")
            exercisesSets.append(newSet)
        }
        
    }
    
    
    func getExerciseSetPosition(exerciseId: String) -> Int {
        return exercisesSets.firstIndex(where: { $0.exerciseId == exerciseId && $0.routineId == self.routine.id }) ?? 0
    }
    
    func saveNewRoutineToDB() {

        //TODO: assign routineId to sets
        
        print("routine is \(self.routine.name) and \(selectedExercisesList)")
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
