//
//  PlotValues.swift
//  starweb1
//
//  Created by Peter Tran on 05/07/2024.
//

import SwiftUI

struct PlotValues: View {
    @State private var yValuesSelected = false
    @State private var zValuesSelected = false
    @State private var bValuesSelected = false
    @State private var cValuesSelected = false
    @State private var showingSheet = true
    
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            VStack {
                HalfSheetView(
                    yValuesSelected: $yValuesSelected,
                    zValuesSelected: $zValuesSelected,
                    bValuesSelected: $bValuesSelected,
                    cValuesSelected: $cValuesSelected,
                    isPresented: $showingSheet
                )
                .presentationDetents([.medium])
            }
            .onAppear {
                showingSheet = true
            }
        }
        
    }
}

struct HalfSheetView: View {
    @Binding var yValuesSelected: Bool
    @Binding var zValuesSelected: Bool
    @Binding var bValuesSelected: Bool
    @Binding var cValuesSelected: Bool
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            // Three rows of toggles
            ForEach(0..<2) { row in
                HStack {
                    if row == 0 {
                        Text("X-axis")
                        Toggle("Power", isOn: $yValuesSelected)
                        Toggle("Pace", isOn: $zValuesSelected)
                    } else if row == 1 {
                        Text("Y-axis")
                        Toggle("Temperature", isOn: $bValuesSelected)
                        Toggle("Heart rate", isOn: $cValuesSelected)
                    }
                }
                .padding()
                .foregroundColor(.starleetWhiteOne)
            }
            
            Button(action: {
                yValuesSelected = false
                zValuesSelected = false
                bValuesSelected = false
                cValuesSelected = false
            }) {
                Text("Reset")
            }
            .padding()
        }
        .padding()
        .background(Color.starleetBlack)
        .cornerRadius(16)
    }
}

#Preview {
    PlotValues()
}
