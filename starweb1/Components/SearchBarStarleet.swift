//
//  SearchBarStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 30/06/2024.
//

import SwiftUI

struct SearchBarStarleet: View {
    @Binding var searchText: String
        
        var body: some View {
                ZStack(alignment: .leading) {
                    if searchText.isEmpty {
                        Text("Ask Coach")
                            .foregroundColor(.gray)
                            .padding(.leading, 10)
        
                    }
                    TextField("", text: $searchText)
                        .foregroundColor(.starleetWhiteOne)
                        .padding(.leading, 10)
                }
            .padding(5)
            .background(Color.starleetDarkOne)
            .cornerRadius(24)
        }
}

struct SearchBarStarleet_Previews: PreviewProvider {
    @State static var searchText = ""
    static var previews: some View {
        SearchBarStarleet(searchText: $searchText)
    }
}
