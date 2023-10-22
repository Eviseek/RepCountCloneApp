//
//  ExerciseCategoryItem.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 09.10.2023.
//

import SwiftUI

struct ExerciseCategoryItem: View {
    
    @State private var displayInfoSheet = false
    
    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var routineObject: RoutineObservableObject
    
//    @Binding var selectedExercise: Exercise?
    
    var exercise: Exercise
    
    var body: some View {
        HStack {
            Button {
                routineObject.appendExerciseToList(exercise)
                UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
            } label: {
                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(.clear)
                        .foregroundColor(.clear)
                    Text(exercise.name)
                        .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
                        .padding(.leading, 10)
                        .foregroundColor(.black)
                }
            }
            Spacer()
            Button {
                displayInfoSheet = true
            } label: {
                Image(systemName: "info.circle")
                    .sheet(isPresented: $displayInfoSheet) {
                        ExerciseInformationView(exercise: exercise)
                    }
            }
        }
        .padding(.horizontal, 10)
    }
}

struct ExerciseCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCategoryItem(exercise: Exercise.MOCK_EXERCISES[0])
            .environmentObject(RoutineObservableObject(routine: nil))
    }
}
