//
//  ExerciseInformationView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 09.10.2023.
//

import SwiftUI

struct ExerciseInformationView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Button {
                    //
                } label: {
                    Image(systemName: "gear")
                }
                .padding(.leading, 10)

                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                }
                .padding(.top, 10)
                .padding(.trailing, 10)

            }
            
            Image("leg-raises")
                .resizable()
                .frame(height: 200)
                .scaledToFit()
            Text("Leg Raises")
                .padding(.leading, 10)
                .font(.title)
                .fontWeight(.medium)
            Divider()
            
            VStack(alignment: .leading) {
                Text("Category")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray))
                Text("Abs")
                    .font(.footnote)
            }
            .padding(.horizontal, 10)
            
            Spacer()
        }
        .padding(.top, 10)
    }
}

struct ExerciseInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseInformationView()
    }
}
