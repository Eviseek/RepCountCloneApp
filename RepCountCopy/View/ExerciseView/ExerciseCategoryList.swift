//
//  ExerciseCategoryList.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 09.10.2023.
//

import SwiftUI

struct ExerciseCategoryList: View {
    
   // @State private var isCategoryDetailPresented = false
    
    var list: [Exercise]
    
    var body: some View {
        VStack(spacing: 0) {
            if list.count > 0 {
                ForEach(list, id: \.id) { exerciseItem in
                    VStack(alignment: .leading, spacing: 0) {
                        ExerciseCategoryItem(exercise: exerciseItem)
                        Divider()
                    }
                }
            } else {
                Text("This category has no exercises.")
                    .bold()
                HStack {
                    Spacer()
                }
            }
            Spacer()
        }
        .cornerRadius(10)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Abs")
                    .bold()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    //workout
                } label: {
                    Image(systemName: "plus")
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    //workout
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
            }
        }
        .padding(.horizontal, 5)
        .background(Color(.systemGray6))
    }
}

struct ExerciseCategoryList_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCategoryList(list: [])
    }
}
