
import SwiftUI

struct MetricStarleet: View {
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            VStack{
                TabView {
                    SessionChartStarleet()
                    WeeklyChartStarleet()
                    PieChartStarleet()
                    MonthlyChartStarleet()
                }
                .frame(height: 600)
                .tabViewStyle(PageTabViewStyle())
                    VStack{
                        HStack(spacing: 16){
                            Image(systemName: "1.circle")
                                .font(.system(size:38))
                                .padding(8)
                                .foregroundStyle(.starleetMain)
                            VStack(alignment:.leading){
                                HStack{
                                    Text("10 min")
                                        .font(.system(size:24, weight: .bold))
                                        .foregroundStyle(.starleetWhiteTwo)
                                }
                                HStack{
                                    Text("150")
                                    Image(systemName: "heart.fill")
                                    Text(" | ")
                                    Text("38°C")
                                }
                                .font(.system(size:14))
                                .foregroundStyle(.gray)
                            }
                            .foregroundStyle(.starleetWhiteOne)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .leading)
                            Text("10 mM")
                                .font(.system(size: 32, weight: .bold))
                                .foregroundStyle(.starleetMain)
                        }
                        Divider()
                            .padding(.vertical, 8)
                        
                    }
                    .padding(.horizontal)
                    
           
            }
        }
    }
}

#Preview {
    MetricStarleet()
}
