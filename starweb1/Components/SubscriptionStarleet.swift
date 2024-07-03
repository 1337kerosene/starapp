//
//  SubscriptionStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 03/07/2024.
//

import SwiftUI

struct SubscriptionStarleet: View {
    @State private var selectedColor: Color = .red
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            VStack(alignment: .leading){
                ScrollView(.horizontal){
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red)
                            .overlay(
                                VStack {
                                    Image(systemName: "star.fill") // Replace with your image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.white)
                                    Text("Red")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .bold()
                                    Text("Additional text for red color")
                                        .foregroundColor(.white)
                                        .font(.body)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 5)
                                }
                            )
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .overlay(
                                VStack {
                                    Image(systemName: "moon.fill") // Replace with your image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.white)
                                    Text("Blue")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .bold()
                                    Text("Additional text for blue color")
                                        .foregroundColor(.white)
                                        .font(.body)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 5)
                                }
                            )
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.green)
                            .overlay(
                                VStack {
                                    Image(systemName: "leaf.fill") // Replace with your image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.white)
                                    Text("Green")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .bold()
                                    Text("Additional text for green color")
                                        .foregroundColor(.white)
                                        .font(.body)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 5)
                                }
                            )
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .overlay(
                                VStack {
                                    Image(systemName: "sun.max.fill") // Replace with your image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.black)
                                    Text("White")
                                        .foregroundColor(.black)
                                        .font(.largeTitle)
                                        .bold()
                                    Text("Additional text for white color")
                                        .foregroundColor(.black)
                                        .font(.body)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 5)
                                }
                            )
                    }
                    .frame(width: 1250, height: 600)
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
            }
            
            
        }
    }
}

#Preview {
    SubscriptionStarleet()
}
