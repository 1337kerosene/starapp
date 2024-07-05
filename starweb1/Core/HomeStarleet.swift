//
//  HomeStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 29/06/2024.
//

import SwiftUI

struct HomeStarleet: View {
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
                LazyVStack {
                   
                        RoundedRectangle(cornerRadius: 10)
                        .fill(.red)
                            .frame(height: 150)
                    RoundedRectangle(cornerRadius: 10)
                    .fill(.green)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                        .frame(height: 150)
                    
                }
                .padding()
                
            }
            .frame(height: 600)
            
        }
    }
}


#Preview {
    HomeStarleet()
}
