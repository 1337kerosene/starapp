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
            VStack {
                DatePicker("", selection: $selectedDate, displayedComponents: .date)
                    .colorScheme(.dark)
                    .padding()
                    .background(Color.starleetBlack)
                    .cornerRadius(5)
      
                // Distance in meters
                ZStack(alignment: .leading) {
                    if distanceInMeters.isEmpty {
                        Text("Distance (m)")
                            .foregroundColor(.gray)
                            .padding(.leading, 4)
                    }
                    TextField("", text: $distanceInMeters)
                        .foregroundColor(.white)
                        .keyboardType(.numberPad)
                        .padding(.leading, 4)
                }
                .padding()
                .background(Color.starleetBlack)
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 1)
                )
                
                // Duration
                ZStack(alignment: .leading) {
                    if duration.isEmpty {
                        Text("Duration")
                            .foregroundColor(.gray)
                            .padding(.leading, 4)
                    }
                    TextField("", text: $duration)
                        .foregroundColor(.white)
                        .keyboardType(.numberPad)
                        .padding(.leading, 4)
                }
                .padding()
                .background(Color.starleetBlack)
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 1)
                )
                
                // Lactate
                ZStack(alignment: .leading) {
                    if lactateLevel.isEmpty {
                        Text("Lactate")
                            .foregroundColor(.gray)
                            .padding(.leading, 4)
                    }
                    TextField("", text: $lactateLevel)
                        .foregroundColor(.white)
                        .keyboardType(.decimalPad)
                        .padding(.leading, 4)
                }
                .padding()
                .background(Color.starleetBlack)
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 1)
                )
                Button(action: {
                    // Save the form
                    showingForm = false
                }) {
                    Text("Save")
                        .foregroundColor(.starleetMain)
                }
                .padding()
            }
            .background(Color.starleetBlack)
            .padding()
            .presentationDetents([.fraction(0.45)])
        }
    }
}

#Preview {
    CalendarButton()
}
