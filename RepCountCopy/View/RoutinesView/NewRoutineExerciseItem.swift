//
//  ExercisePreview.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct NewRoutineExerciseItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Crunches")
                .fontWeight(.semibold)
            HStack(spacing: 3) {
                Text("N/A")
                Text("sets")
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(.systemGray3))
            }
           // Divider()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        .background(.white)
    }
}

struct NewRoutineExerciseItem_Previews: PreviewProvider {
    static var previews: some View {
        NewRoutineExerciseItem()
    }
}
