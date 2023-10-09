//
//  ExerciseCategory.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct ExerciseCategory: View {
    
    var categoryName = ""
    @State private var action: Int? = 0
    
    var body: some View {
            NavigationLink {
                ExerciseCategoryList()
            } label: {
                VStack(alignment: .leading) {
                    HStack(spacing: 3) {
                        Text(categoryName)
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

struct ExerciseCategory_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCategory(categoryName: "Abs")
    }
}
