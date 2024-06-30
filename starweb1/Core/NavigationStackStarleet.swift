//
//  NavigationStackStarleet.swift
//  starweb1
//
//  Created by Peter Tran on 29/06/2024.
//

import SwiftUI

struct NavigationStackStarleet: View {
    @State var selectedTab: Int = 0
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack{
            
            TabView(selection: $selectedTab) {
                HomeStarleet()
                    .tabItem {
                        Image(systemName: "sum")
                    }
                    .tag(0)
                CalendarStarleet()
                    .tabItem {
                        Image(systemName: "calendar")
                    }
                    .tag(1)
                LactateStarleet()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                    }
                    .tag(2)
                ChatStarleet()
                    .tabItem {
                        Image(systemName: "person.2")
                    }
                    .tag(3)
                MetricStarleet()
                    .tabItem {
                        Image(systemName: "chart.xyaxis.line")
                    }
                    .tag(4)
            } .tint(.starleetMain)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .principal) {
                        SearchBar(searchText: $searchText)
                            .frame(maxWidth: .infinity)
                    }
                    ToolbarItem(placement: ToolbarItemPlacement.topBarLeading){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Label("hello", systemImage: "person.fill")
                        })
                    }
                    ToolbarItemGroup(placement: ToolbarItemPlacement.topBarTrailing){
                        if selectedTab == 1 {
                            Button(action: {}, label: {
                                Label("Send", systemImage: "calendar")
                            })
                            Button(action: {}, label: {
                                Label("Send", systemImage: "plus")
                            })
                            
                        } else if selectedTab == 2 {
                            Button(action: {}, label: {
                                Label("Send", systemImage: "cpu")
                            })
                            Button(action: {}, label: {
                                Label("Send", systemImage: "plus")
                            })
                            
                        } else if selectedTab == 3 {
                            Button(action: {}, label: {
                                Label("Send", systemImage: "rectangle.3.group.bubble.fill")
                            })
                            Button(action: {}, label: {
                                Label("Send", systemImage: "square.and.arrow.up")
                            })
                            
                        }
                        else if selectedTab == 4 {
                            Button(action: {}, label: {
                                Label("Send", systemImage: "chart.dots.scatter")
                            })
                            Button(action: {}, label: {
                                Label("Send", systemImage: "list.bullet.clipboard")
                            })
                            
                        }
                        else {
                            Button(action: {}, label: {
                                Label("Send", systemImage: "cpu")
                            })
                            Button(action: {}, label: {
                                Label("Send", systemImage: "bell")
                            })
                        }
                    }
                }
                .tint(.white)
        }
    }
}

#Preview {
    NavigationStackStarleet()
}


import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.starleetWhiteOne)
            TextField("Search", text: $searchText)
                .textFieldStyle(PlainTextFieldStyle())
                .foregroundColor(.starleetWhiteOne)
        }
        .padding(2)
        .background(.starleetDarkOne)
        .cornerRadius(19)
        .padding(.horizontal)
    }
}
