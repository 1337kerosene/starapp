import SwiftUI

struct PlotValues: View {
    @State private var yValuesSelected = false
    @State private var zValuesSelected = false
    @State private var bValuesSelected = false
    @State private var cValuesSelected = false
    @State private var showingSheet = true
    
    var body: some View {
        ZStack {
            Color.starleetBlack.ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        Toggle("Power", isOn: $yValuesSelected)
                    }
                    .padding()
                    .foregroundColor(.starleetWhiteOne)
                    
                    HStack {
                        Toggle("Pace", isOn: $zValuesSelected)
                    }
                    .padding()
                    .foregroundColor(.starleetWhiteOne)
                    
                    HStack {
                        Toggle("Temperature", isOn: $bValuesSelected)
                    }
                    .padding()
                    .foregroundColor(.starleetWhiteOne)
                    
                    HStack {
                        Toggle("Heart rate", isOn: $cValuesSelected)
                    }
                    .padding()
                    .foregroundColor(.starleetWhiteOne)
                }
                .padding()
                .background(Color.starleetBlack)
                .cornerRadius(16)
                .presentationDetents([.fraction(0.35)])
                
            }
            .onAppear {
                showingSheet = true
            }
        }
    }
}

#Preview {
    PlotValues()
}
