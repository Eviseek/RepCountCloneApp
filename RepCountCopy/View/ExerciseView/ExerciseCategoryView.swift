//
//  ExerciseCategory.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct ExerciseCategoryView: View {
    
    @State private var action: Int? = 0
    
    var category: ExerciseCategory
    
    private var exerciseList: [Exercise] {
        return Exercise.MOCK_EXERCISES.filter({ $0.categoryId == category.id})
    }
    
    var body: some View {
            NavigationLink {
                ExerciseCategoryList(list: exerciseList) //find exercises and pass them
            } label: {
                VStack(alignment: .leading) {
                    HStack(spacing: 3) {
                        Text(category.name)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .listRowBackground(Color(.systemGray6))
            }
            .foregroundColor(.black)
      //  .background(.red)
    }
}

struct ExerciseCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCategoryView(category: ExerciseCategory.MOCK_CATEGORIES[0])
    }
}
