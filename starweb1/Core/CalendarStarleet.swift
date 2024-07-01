//
//  CalendarStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 29/06/2024.
//

import SwiftUI

struct CalendarStarleet: View {
    @State private var color: Color = .blue
    @State private var date = Date()
    let daysOfWeek = Date.capitalizedFirstLettersOfWeekdays
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    @State private var days: [Date] = []
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            VStack{
                DatePicker(
                    "",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .fontWeight(.bold)
                HStack{
                    ForEach(daysOfWeek.indices, id: \.self){
                        dayOfWeek in Text(daysOfWeek[dayOfWeek])
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    }
                }
                .fontWeight(.black)
                LazyVGrid(columns: columns){
                    ForEach(days, id: \.self){ day in
                            Text(day.formatted(.dateTime.day()))
                            
                                .fontWeight(.bold)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 70)
                                .background(Circle()
                                    .foregroundStyle(
                                        Date.now.startOfDay == day.startOfDay
                                        ? .starleetMain
                                        : .starleetMain.opacity(0.3))
                                                   
                                )
                        
                    }
                }
            }
            .offset(y: -90)
            .foregroundStyle(.starleetWhiteTwo)
            
        }
        .onAppear{
            days = date.calendarDisplayDays
        }
        .onChange(of: date) {
            days = date.calendarDisplayDays
        }
        
    }
}


#Preview {
    CalendarStarleet()
}
