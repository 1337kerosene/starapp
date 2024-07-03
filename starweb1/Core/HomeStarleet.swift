//
//  HomeStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 29/06/2024.
//

import SwiftUI


struct HomeStarleet: View {
    let columns = Array(repeating: GridItem(.flexible(minimum: 20)), count: 2)
    var body: some View {
        ZStack {
            Color.starleetBlack.ignoresSafeArea()
            ScrollView{
                HStack{
                   Circle()
                        .foregroundStyle(.white)
                    Circle()
                         .foregroundStyle(.red)
                    Circle()
                         .foregroundStyle(.green)
                }
                .padding()
                LazyVGrid(columns: columns) {
                    ForEach(MockData.colors.indices, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(MockData.colors[index])
                            .frame(height: 150)
                    }
                }
                .padding()
                
            }
            .frame(height: 600)
            
        }
    }
}

struct MockData {
    static var colors: [Color] {
        var array: [Color] = []
        for _ in 0..<30 {
            array.append(Color.random)
        }
        return array
    }
}

extension Color {
    static var random: Color {
        return Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
}



#Preview {
    HomeStarleet()
}
