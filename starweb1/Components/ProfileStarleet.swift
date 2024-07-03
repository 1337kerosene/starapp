//
//  ProfileStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 02/07/2024.
//

import SwiftUI

struct ProfileItem {
    let icon: String
    let text: String
}

struct ProfileStarleet: View {
    let profileItems = [
        ProfileItem(icon: "1.circle", text: "Account"),
        ProfileItem(icon: "2.circle", text: "Subscription"),
        ProfileItem(icon: "3.circle", text: "Integrations"),
        ProfileItem(icon: "4.circle", text: "Notification"),
        ProfileItem(icon: "5.circle", text: "Help"),
        ProfileItem(icon: "6.circle", text: "Privacy"),
        ProfileItem(icon: "7.circle", text: "Learn"),
        ProfileItem(icon: "8.circle", text: "Sign Out")
    ]
    
    var body: some View {
        ZStack {
            Color.starleetBlack.ignoresSafeArea()
            VStack {
                Image(systemName: "1.circle")
                    .padding(8)
                    .font(.system(size: 98))
                    .foregroundStyle(.starleetMain)
                Text("Name")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.starleetWhiteTwo)
                Text("@Tag")
                    .font(.system(size: 18))
                    .foregroundStyle(.starleetWhiteOne)
                
                ForEach(profileItems, id: \.icon) { item in
                    VStack {
                        HStack {
                            Image(systemName: item.icon)
                                .padding(8)
                                .font(.system(size: 38))
                                .foregroundStyle(.starleetMain)
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(item.text)
                                        .font(.system(size: 24, weight: .bold))
                                        .foregroundStyle(.starleetWhiteTwo)
                                }
                            }
                            .foregroundStyle(.starleetWhiteOne)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 32, weight: .bold))
                                .foregroundStyle(.starleetMain)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .padding(.bottom, 16)
            .padding(.top)
        }
    }
}


#Preview {
    ProfileStarleet()
}
