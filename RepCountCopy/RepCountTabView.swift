//
//  ContentView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct RepCountTabView: View {
    var body: some View {
        TabView {
            LogView(workouts: [Workout.MOCK_WORKOUTS[0], Workout.MOCK_WORKOUTS[0], Workout.MOCK_WORKOUTS[1]])
            .tabItem {
                Label("Log", systemImage: "house")
            }
            RoutinesView(routines: [Routine.MOCK_ROUTINES[0], Routine.MOCK_ROUTINES[1]])
            .tabItem {
                Label("Routines", systemImage: "house")
            }

            StatisticsView()
            .tabItem {
                Label("Statistics", systemImage: "house")
            }

            Text("Profile")
            .tabItem {
                Label("Profile", systemImage: "house")
            }
        }
        .tint(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RepCountTabView()
    }
}
