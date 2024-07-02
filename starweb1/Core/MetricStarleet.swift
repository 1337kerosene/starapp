
import SwiftUI

struct MetricStarleet: View {
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            VStack{
                TabView {
                    SessionChartStarleet()
                    WeeklyChartStarleet()
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
    MetricStarleet()
}
