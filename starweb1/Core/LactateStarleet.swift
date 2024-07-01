//
//  LactateStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 29/06/2024.
//

import SwiftUI

struct LactateStarleet: View {
    @State private var date = Date()
       var body: some View {
           ZStack{
               Color.starleetBlack.ignoresSafeArea()
               Text("Lactate")
                   .foregroundStyle(.white)
           }
       }
      
   }



#Preview {
    LactateStarleet()
}
