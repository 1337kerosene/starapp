//
//  NewMessage.swift
//  starweb1
//
//  Created by Peter Tran on 04/07/2024.
//

import SwiftUI

struct NewMessage: View {
    @State private var showingForm = false
    @State private var receiver: String = ""
    @State private var message: String = ""
    @State private var showingSheet = true
    var body: some View {
        ZStack {
            Color.starleetBlack.ignoresSafeArea()
            VStack {
                ZStack(alignment: .leading) {
                    if receiver.isEmpty {
                        Text("To:")
                            .foregroundColor(.gray)
                    }
                    TextField("", text: $receiver)
                        .foregroundColor(.white)
                        .keyboardType(.numberPad)
                }
                .padding()
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 1)
                )
                                
                ZStack(alignment: .leading) {
                    if message.isEmpty {
                        Text("Message")
                            .foregroundColor(.gray)
                            .padding(.leading, 4)
                            .padding(.bottom, 120)
                    }
                    TextEditor(text: $message)
                        .foregroundColor(.white)
                        .background(Color.clear)
                        .frame(height: 150) // Adjust the height as needed
                }
                .padding()
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 1)
                )
                
                Button(action: {
                    // Save the form
                    showingForm = false
                }) {
                    Text("Send")
                        .foregroundColor(.starleetMain)
                }
                .padding()
            }
            .background(Color.starleetBlack)
            .scrollContentBackground(.hidden)
            .accentColor(.starleetMain)
            .fontWeight(.bold)
            .presentationDetents([.medium])
            .onAppear {
                showingSheet = true
            }
            
            
        }
        
    }
}

#Preview {
    NewMessage()
}
