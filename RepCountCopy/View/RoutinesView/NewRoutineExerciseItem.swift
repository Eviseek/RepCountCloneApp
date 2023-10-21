//
//  ExercisePreview.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct NewRoutineExerciseItem: View {
    
    var exercise: Exercise
    
    @EnvironmentObject var newRoutineObject: NewRoutineObject
    
    private var setCount: Int {
        return ExerciseSet.MOCK_SETS.first(where: { $0.exerciseId == exercise.id })?.setCount ?? 0
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink {
                NewRoutineExerciseSetView(exercise: exercise)
                    .environmentObject(newRoutineObject)
            } label: {
                VStack(alignment: .leading) {
                    Text(exercise.name)
                        .fontWeight(.semibold)
                    HStack(spacing: 3) {
                        Text(setCount.description)
                        Text("sets")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color(.systemGray3))
                    }
                }
            }
            .foregroundColor(.black)
           // Divider()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        .background(.white)
    }
}

struct NewRoutineExerciseItem_Previews: PreviewProvider {
    static var previews: some View {
        NewRoutineExerciseItem(exercise: Exercise.MOCK_EXERCISES[0])
            .environmentObject(NewRoutineObject(routine: nil))
    }
}
