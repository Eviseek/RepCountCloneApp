//
//  RoutinesView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct RoutinesView: View {
    
    @State private var isShowingNewRoutineScreen = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack(alignment: .leading) {
                    Divider()
                    
                    ForEach(0 ..< 5) { _ in
                        VStack(alignment: .leading) {
                            RoutinesWorkoutView()
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
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        NewRoutineView()
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
        RoutinesView()
    }
}
