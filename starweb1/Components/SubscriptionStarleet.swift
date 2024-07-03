//
//  SubscriptionStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 03/07/2024.
//

import SwiftUI

struct SubscriptionStarleet: View {
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            VStack{
                TabView {
                    SessionChartStarleet()
                    WeeklyChartStarleet()
                    MonthlyChartStarleet()
                    MonthlyChartStarleet()
                    MonthlyChartStarleet()
                }
                .frame(height: 600)
                .tabViewStyle(PageTabViewStyle())
                .offset(y: -110)
            }
        }
    }
}

#Preview {
    SubscriptionStarleet()
}
