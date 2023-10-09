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
    
    var body: some View {
        NavigationView {
            VStack {
//                HStack {
//                    Button {
//                        dismiss()
//                    } label: {
//                        Text("Cancel")
//                    }
//
//                    Spacer()
//
//                    Text("Select Exercise")
//                        .fontWeight(.semibold)
//
//                    Spacer()
//
//                    Button {
//                        //custom exercise
//                    } label: {
//                        Image(systemName: "plus")
//                    }
//
//                    Button {
//                        //custom exercise
//                    } label: {
//                        Image(systemName: "ellipsis.circle")
//                    }
//                    .padding(.leading, 10)
//                }
//                .padding(.horizontal, 10)
//                .padding(.top, 20)
                
 //               TextField("Search", text: $searchText)
//                    .padding(.vertical, 5)
//                    .padding(.horizontal, 10)
//                    .background(Color(.white))
//                    .searchable(text: $searchText)
//                    .cornerRadius(5)
//                    .padding(.horizontal, 10)
                
                Divider()
                
                List {
                    ExerciseCategory(categoryName: "Abs")
                    ExerciseCategory(categoryName: "Back")
                    ExerciseCategory(categoryName: "Biceps")
                    ExerciseCategory(categoryName: "Cardio")
                    ExerciseCategory(categoryName: "Chest")
                    ExerciseCategory(categoryName: "Legs")
                    ExerciseCategory(categoryName: "Shoulders")
                    ExerciseCategory(categoryName: "Triceps")
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
}

struct ExerciseCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCategoriesView()
    }
}
