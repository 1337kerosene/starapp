

import SwiftUI

struct ChatStarleet: View {
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            VStack{
                ScrollView{
                    ForEach(0..<10, id: \.self){ num in
                        VStack{
                            HStack(spacing: 16){
                                Image(systemName: "person.fill")
                                    .font(.system(size:32))
                                    .padding(8)
                                    .foregroundStyle(.starleetMain)
                                    .overlay(RoundedRectangle(
                                        cornerRadius: 44)
                                        .stroke(.starleetWhiteTwo, lineWidth: 1)
                                    )
                                VStack(alignment:.leading){
                                    Text("Satoshi Nakamoto")
                                        .font(.system(size:16, weight: .bold))
                                        .foregroundStyle(.starleetWhiteOne)
                                    Text("You have to buy BITCOIN for access")
                                        .font(.system(size:14))
                                        .foregroundStyle(.starleetWhiteTwo)
                                    
                                }
                                .foregroundStyle(.starleetWhiteOne)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .leading)
                                Text("22d")
                                    .font(.system(size:14, weight: .semibold))
                                    .foregroundStyle(.starleetMain)
                            }
                            Divider()
                                .padding(.vertical, 8)
                            
                        }
                        .padding(.horizontal)
                        
                    }
                    
                }
            }
            .padding(.bottom, 16)
            .padding(.top)
            
        }
    }
}

#Preview {
    ChatStarleet()
}
