//
//  CalendarStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 29/06/2024.
//

import SwiftUI

struct CalendarStarleet: View {
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            Text("Calendar")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CalendarStarleet()
}
