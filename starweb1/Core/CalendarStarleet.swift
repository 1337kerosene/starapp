import SwiftUI

struct CalendarStarleet: View {
    @State private var date = Date()
    @State private var days: [Date] = []
    let daysOfWeek = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    var body: some View {
        ZStack {
            Color.starleetBlack.ignoresSafeArea()
            VStack {
                DatePicker(
                    "",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .padding(.bottom, 16)
                .onChange(of: date){
                    updateDates()
                }
                
                HStack {
                    ForEach(daysOfWeek, id: \.self) { dayOfWeek in
                        Text(dayOfWeek)
                            .frame(maxWidth: .infinity)
                    }
                }
                .fontWeight(.black)
                .padding(.bottom, 8)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(days, id: \.self) { day in
                            Text(day.formatted(.dateTime.day()))
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, minHeight: 70)
                                .background(
                                    Circle()
                                        .foregroundColor(
                                            Calendar.current.isDateInToday(day) ? .starleetMain : .starleetMain.opacity(0.3)
                                          
                                        )
                                )
                        }
                    }
                }
            }
            .padding()
            .foregroundStyle(.starleetWhiteTwo)
            .onAppear{
                updateDates()
            }
        }
    }
    private func updateDates() {
            days = date.daysInYear
        }
}

#Preview {
    CalendarStarleet()
}
