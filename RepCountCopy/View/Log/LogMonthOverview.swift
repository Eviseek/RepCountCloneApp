//
//  LogMonthOverview.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct LogMonthOverview: View {
    
    let workouts: [Workout]
    
    
    var body: some View {
        VStack {
            HStack(spacing: 2) {
                Text("October 2023")
                Spacer()
                Text(workouts.count.description)
                Text("Workouts")
            }
            .foregroundColor(Color(.systemGray))
            .bold()
            //.padding(.horizontal, 10)
            
            //Workout view(s)
            ForEach(workouts) { workout in
                SingleLogWorkoutView(workout: workout)
            }
            
        }
        .padding(.bottom, 30)
    }
}

struct LogMonthOverview_Previews: PreviewProvider {
    static var previews: some View {
        LogMonthOverview(workouts: [Workout.MOCK_WORKOUTS[0], Workout.MOCK_WORKOUTS[1], Workout.MOCK_WORKOUTS[1], Workout.MOCK_WORKOUTS[0]])
    }
}

