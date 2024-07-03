//
//  LoginStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 03/07/2024.
//

import SwiftUI

struct LoginStarleet: View {
    @State private var trigger: Bool = false
    var body: some View {
        ZStack {
            Color.starleetBlack.ignoresSafeArea()
            VStack(alignment: .leading, spacing:12) {
                HackerTextView(text: trigger ? "Hello" : "Starleet ApS",
                               trigger: trigger,
                               transition: .interpolate,
                               speed: 0.06
                )
                .font(.largeTitle.bold())
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.starleetWhiteTwo)
                
                Button(action: {trigger.toggle()}, label: {
                    Text("Trigger")
                        .fontWeight(.semibold)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 2)
                        
                })
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(15)
        }
    }
}

#Preview {
    LoginStarleet()
}
