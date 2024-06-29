//
//  ChatStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 29/06/2024.
//

import SwiftUI

struct ChatStarleet: View {
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            Text("Chat")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ChatStarleet()
}
