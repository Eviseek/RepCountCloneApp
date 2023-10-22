//
//  RoutinesWorkoutView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct RoutinesWorkoutView: View {
    
    var routine: Routine
    
    @EnvironmentObject var routineObject: RoutineObservableObject
    
    
    var body: some View {
        HStack {
            NavigationLink {
                NewRoutineView()
                    .environmentObject(routineObject)
            } label: {
                HStack {
                    if routineObject.editClicked {
                        Button {
                            routineObject.deleteRoutine()
                        } label: {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.red)
                        }
                    }
                    Text(routine.name)
                        .foregroundColor(.black)
                        .onAppear {
                            routineObject.setUpExistingRoutine(routine: routine)
                            //TODO: re-do, this is bad solution as it gets called every time on appear
                        }
                    Spacer()
                    Image(systemName: "chevron.forward")
                        .foregroundColor(Color(.gray))
                }
            }
        }
    }
}

struct RoutinesWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesWorkoutView(routine: Routine.MOCK_ROUTINES[0])
            .environmentObject(RoutineObservableObject(routine: nil))
    }
}
