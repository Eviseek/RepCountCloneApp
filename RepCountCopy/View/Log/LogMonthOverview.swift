//
//  LogMonthOverview.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct LogMonthOverview: View {
    var body: some View {
        VStack {
            HStack(spacing: 2) {
                Text("October 2023")
                Spacer()
                Text("3")
                Text("Workouts")
            }
            .foregroundColor(Color(.systemGray))
            .bold()
            //.padding(.horizontal, 10)
            
            //Workout view(s)
            LogWorkoutView()
            LogWorkoutView()
            LogWorkoutView()
            
        }
        .padding(.bottom, 30)
    }
}

struct LogMonthOverview_Previews: PreviewProvider {
    static var previews: some View {
        LogMonthOverview()
    }
}

