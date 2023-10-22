//
//  ExercisePreview.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct NewRoutineExerciseItem: View {
    
    var exercise: Exercise
    //var positionInList: Int //used to get reference directly to the set
    
    @EnvironmentObject var newRoutineObject: RoutineObservableObject
    
    var setCount2: Int = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink {
                NewRoutineExerciseSetView(setCount: (newRoutineObject.exercisesSets[newRoutineObject.getExerciseSetPosition(exerciseId: exercise.id)].setCount), exercise: exercise)
                    .environmentObject(newRoutineObject)
            } label: {
                VStack(alignment: .leading) {
                    Text(exercise.name)
                        .fontWeight(.semibold)
                    HStack(spacing: 3) {
                        Text((newRoutineObject.exercisesSets[newRoutineObject.getExerciseSetPosition(exerciseId: exercise.id)].setCount).description)
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
            .environmentObject(RoutineObservableObject(routine: nil))
    }
}


