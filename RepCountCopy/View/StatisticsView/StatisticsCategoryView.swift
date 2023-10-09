//
//  StatisticsCategoryView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct StatisticsCategoryView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            //Category title
            Text("Overall Statistics")
                .font(.title3)
                .bold()
                .padding(.bottom, 10)
                .padding(.top, 10)
            
            VStack(spacing: 0) {
                ForEach(0 ..< 5) { _ in
                    VStack(alignment: .leading, spacing: 0) {
                        StatisticsCategoryItem()
                        Divider()
                    }
                }
            }
            .cornerRadius(10)
        }
    }
}

struct StatisticsCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsCategoryView()
    }
}
