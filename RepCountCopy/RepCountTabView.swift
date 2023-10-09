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
            LogView()
            .tabItem {
                Label("Log", systemImage: "house")
            }
            RoutinesView()
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
