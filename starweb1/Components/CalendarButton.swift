import SwiftUI

struct CalendarButton: View {
    @State private var showingForm = false
    @State private var selectedDate = Date()
    @State private var distanceInMeters: String = ""
    @State private var duration: String = ""
    @State private var lactateLevel: String = ""
    
    var body: some View {
        ZStack {
            Color.starleetBlack.ignoresSafeArea()
            NavigationView {
                Form {
                    DatePicker("Date", selection: $selectedDate, displayedComponents: .date)
                        .colorScheme(.dark)
                        .listRowBackground(Color.starleetBlack)
                    
                    // Distance in meters
                    ZStack(alignment: .leading) {
                        if distanceInMeters.isEmpty {
                            Text("Distance (m)")
                                .foregroundColor(.gray)
                        }
                        TextField("", text: $distanceInMeters)
                            .foregroundColor(.white)
                            .keyboardType(.numberPad)
                    }
                    .padding()
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .listRowBackground(Color.starleetBlack)
                    
                    // Duration
                    ZStack(alignment: .leading) {
                        if duration.isEmpty {
                            Text("Duration")
                                .foregroundColor(.gray)
                        }
                        TextField("", text: $duration)
                            .foregroundColor(.white)
                            .keyboardType(.numberPad)
                    }
                    .padding()
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .listRowBackground(Color.starleetBlack)
                    
                    // Lactate
                    ZStack(alignment: .leading) {
                        if lactateLevel.isEmpty {
                            Text("Lactate")
                                .foregroundColor(.gray)
                        }
                        TextField("", text: $lactateLevel)
                            .foregroundColor(.white)
                            .keyboardType(.decimalPad)
                    }
                    .padding()
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .listRowBackground(Color.starleetBlack)
                }
                .navigationBarItems(trailing: Button("Save") {
                    // Dismiss the form
                    showingForm = false
                })
                .background(Color.starleetBlack)
                .scrollContentBackground(.hidden)
                .accentColor(.starleetMain)
                
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Enter Details")
                            .foregroundColor(.starleetWhiteOne)
                            .font(.headline)
                    }
                }
            }
            .fontWeight(.bold)
            .presentationDetents([.medium])
        }
    }
}

#Preview {
    CalendarButton()
}
