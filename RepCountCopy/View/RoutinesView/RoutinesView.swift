//
//  RoutinesView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct RoutinesView: View {
    
    @State private var isShowingNewRoutineScreen = false
    
    let routines: [Routine]
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack(alignment: .leading) {
                    Divider()
                    
                    ForEach(routines) { routine in
                        VStack(alignment: .leading) {
                            RoutinesWorkoutView(routine: routine)
                                .environmentObject(RoutineObservableObject(routine: nil))
                            Divider()
                        }
                    }
                }
                .padding(.horizontal, 10)
            }
            .navigationTitle("Routines")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Edit") {
                        print("Edit tapped!")
                        //TODO: show delete buttons
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        NewRoutineView()
                            .environmentObject(RoutineObservableObject(routine: nil)) //je to dobre solution?
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .padding(.horizontal, 5)
        }
    }
}

struct RoutinesView_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesView(routines: [Routine.MOCK_ROUTINES[0], Routine.MOCK_ROUTINES[1]])
    }
}
