//
//  NotificationMenuStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 03/07/2024.
//

import SwiftUI

struct CustomMenuView: View {
    @Binding var isPresented: Bool
    @State private var inputText: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Button(action: {
                // Action 1
                isPresented = false
            }) {
                Text("New message")
                    .padding()
            }

            Button(action: {
                // Action 2
                isPresented = false
            }) {
                Text("New training program")
                    .padding()
            }

            TextField("Enter something", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(height: 40) // Adjust height to make the TextField larger
                .background(Color.white)
                .cornerRadius(5)

            Button(action: {
                // Use inputText for some action
                print("Input: \(inputText)")
                isPresented = false
            }) {
                Text("Submit")
                    .padding()
            }
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}

struct NotificationMenuStarleet: View {
    @State private var isMenuPresented: Bool = false

    var body: some View {
        HStack {
            NavigationLink(destination: SubscriptionStarleet()) {
                Label("Subscription", systemImage: "cpu")
            }

            Button(action: {
                isMenuPresented.toggle()
            }) {
                Label("Notifications", systemImage: "bell")
            }
            .popover(isPresented: $isMenuPresented, arrowEdge: .top) {
                CustomMenuView(isPresented: $isMenuPresented)
                    .frame(width: 250)
            }
        }
        .padding()
    }
}

#Preview {
    NotificationMenuStarleet()
}
