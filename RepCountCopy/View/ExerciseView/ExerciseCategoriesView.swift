//
//  ExercisesListView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct ExerciseCategoriesView: View {
    
    @State private var searchText = ""
    
    @Environment(\.dismiss) private var dismiss
    
    private var categories = ExerciseCategory.MOCK_CATEGORIES
    
    var body: some View {
        NavigationView {
            VStack {
                
                Divider()
                
                List {
                    ForEach(categories, id: \.id) { category in
                        ExerciseCategoryView(category: category)
                    }
                }
                .listStyle(.grouped)
                .searchable(text: $searchText, prompt: "Search")
            }
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(.systemGray6))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .principal) {
                    Text("Select Exercise")
                        .bold()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //create new exercise screen
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //menu with: edit exercises, edit categories
                    } label: {
                        Image(systemName: "ellipsis.circle")
                    }
                }
            }
            .padding(.horizontal, 5)
            .background(Color(.systemGray6))
        }
    }
}

struct ExerciseCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCategoriesView()
    }
}
