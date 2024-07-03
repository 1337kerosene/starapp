

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
                                    .font(.system(size:34))
                                    .padding(8)
                                    .foregroundStyle(.starleetMain)
                                VStack(alignment:.leading){
                                    Text("Satoshi Nakamoto")
                                        .font(.system(size:18, weight: .bold))
                                        .foregroundStyle(.starleetWhiteOne)
                                    Text("You have to buy BITCOIN for access")
                                        .font(.system(size:14))
                                        .foregroundStyle(.gray)
                                    
                                }
                                .foregroundStyle(.starleetWhiteOne)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .leading)
                                Text("22d")
                                    .font(.system(size:14, weight: .semibold))
                                    .foregroundStyle(.gray)
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
