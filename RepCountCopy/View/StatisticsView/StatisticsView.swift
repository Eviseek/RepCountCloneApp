//
//  StatisticsView.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct StatisticsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    StatisticsCategoryView()
                    StatisticsCategoryView()
                    StatisticsCategoryView()
                }
                .padding(.horizontal, 10)
            }
            .navigationTitle("Statistics")
            .padding(.horizontal, 5)
            .background(Color(.systemGray6))
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
