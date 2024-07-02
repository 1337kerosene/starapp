
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
                                Image(systemName: "1.circle")
                                    .font(.system(size:38))
                                    .padding(8)
                                    .foregroundStyle(.starleetMain)
                                VStack(alignment:.leading){
                                    HStack{
                                        Image(systemName: "stopwatch.fill")
                                        Text("10 min")
                                            .font(.system(size:18, weight: .bold))
                                            .foregroundStyle(.starleetWhiteOne)
                                    }
                                    HStack{
                                        Image(systemName: "heart.fill")
                                        Text("150")
                                        Text(" | ")
                                        Image(systemName: "thermometer.high")
                                        Text("38°C")
                                            .font(.system(size:16))
                                            .foregroundStyle(.starleetWhiteTwo)
                                        
                                    }
                                }
                                .foregroundStyle(.starleetWhiteOne)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .leading)
                                Text("10 mM")
                                    .font(.system(size: 24, weight: .bold))
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
