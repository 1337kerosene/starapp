
import SwiftUI

struct LactateStarleet: View {
    var body: some View {
        ZStack{
            Color.starleetBlack.ignoresSafeArea()
            VStack{
                ScrollView{
                    ForEach(0..<10, id: \.self){ num in
                        VStack{
                            HStack(spacing: 16){
                                Image(systemName: "bolt.fill")
                                    .font(.system(size:32))
                                    .padding(8)
                                    .foregroundStyle(.starleetMain)
                                VStack(alignment:.leading){
                                    Text("At threshold")
                                        .font(.system(size:18, weight: .bold))
                                        .foregroundStyle(.starleetWhiteOne)
                                    Text("Lap 1@5 min")
                                        .font(.system(size:16))
                                        .foregroundStyle(.starleetWhiteTwo)
                                    
                                }
                                .foregroundStyle(.starleetWhiteOne)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .leading)
                                Text("10 mM")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundStyle(.starleetMain)
                            }
                            Divider()
                                .padding(.vertical, 8)
                            
                        }
                        .padding(.horizontal)
                        
                    }
                    
                }
                .padding(.bottom, 16)
                .padding(.top)
            }
            
        }
    }
    
}



#Preview {
    LactateStarleet()
}
