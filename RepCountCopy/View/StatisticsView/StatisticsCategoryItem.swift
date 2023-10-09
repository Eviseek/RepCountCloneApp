//
//  StatisticsCategoryItem.swift
//  RepCountCopy
//
//  Created by Eva Chlpikova on 08.10.2023.
//

import SwiftUI

struct StatisticsCategoryItem: View {
    var body: some View {
        HStack {
            Text("Workout Duration")
            Spacer()
            Image(systemName: "lock")
        }
        .padding(.vertical, 13)
        .padding(.horizontal, 13)
        .background(.white)
    }
}

struct StatisticsCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsCategoryItem()
    }
}
