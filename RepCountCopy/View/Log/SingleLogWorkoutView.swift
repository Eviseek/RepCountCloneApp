//
//  LogWorkoutView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct SingleLogWorkoutView: View {
    
    let workout: Workout
    
//    private var routineInfo: Routine {
//        return Routine.MOCK_ROUTINES.filter({ $0.workout?.id == routine.username})
//    }
    
    var body: some View {
        HStack(alignment: .top) {
            //vstack with day
            VStack(alignment: .center) {
                Text("Fri")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.systemGray))
                Text("6")
                    .font(.title3)
                    .fontWeight(.bold)
            }
            .frame(alignment: .center)
            .padding(.horizontal, 12)
            .padding(.vertical, 5)
            .background(Color(.systemGray6))
            .cornerRadius(5)
            .padding(.horizontal, 15)
            
            //Spacer()
            
            //vstack with workout itself
            VStack(alignment: .leading, spacing: 5) {
                Text("Abs workout")
                    .fontWeight(.bold)
                    .font(.system(size: 19))
                Text("3x Leg Raises")
                Text("3x Leg Raises")
                Text("3x Leg Raises")
                Text("3x Leg Raises")
            }
            
            Spacer()
            
            //minutes
            HStack(spacing: 4) {
                Text("52")
                Text("min")
            }
            .font(.headline)
            .fontWeight(.medium)
            .foregroundColor(Color(.systemGray))
            .padding(.horizontal, 10)
        }
        .frame(alignment: .top)
        .padding(.vertical, 10)
        .background(.white)
        .cornerRadius(10)
       // .padding(.horizontal, 5)
    }
}

struct SingleLogWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        SingleLogWorkoutView(workout: Workout.MOCK_WORKOUTS[0])
    }
}

