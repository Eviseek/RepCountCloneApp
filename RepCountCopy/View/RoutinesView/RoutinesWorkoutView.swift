//
//  RoutinesWorkoutView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct RoutinesWorkoutView: View {
    var body: some View {
        HStack {
            Text("Unnamed Routine")
            Spacer()
            Image(systemName: "chevron.forward")
                .foregroundColor(Color(.gray))
        }
    }
}

struct RoutinesWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesWorkoutView()
    }
}
