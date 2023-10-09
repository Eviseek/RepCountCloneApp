//
//  ExerciseCategoryItem.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 09.10.2023.
//

import SwiftUI

struct ExerciseCategoryItem: View {
    
    @State private var displayInfoSheet = false
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        
        HStack {
            Button {
                UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
            } label: {
                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(.clear)
                        .foregroundColor(.clear)
                    Text("Leg Raises")
                        .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
                        .padding(.leading, 10)
                        .foregroundColor(.black)
                }
            }
            Spacer()
            Button {
                displayInfoSheet = true
            } label: {
                Image(systemName: "info.circle")
                    .sheet(isPresented: $displayInfoSheet) {
                        ExerciseInformationView()
                    }
            }
        }
        .padding(.horizontal, 10)
    }
}

struct ExerciseCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCategoryItem()
    }
}
