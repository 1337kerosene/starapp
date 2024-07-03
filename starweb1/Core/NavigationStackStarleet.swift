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
    @State private var inputText: String = ""
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
            }
            .tint(.starleetMain)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    SearchBarStarleet(searchText: $searchText)
                }
                ToolbarItem(placement: ToolbarItemPlacement.topBarLeading){
                    NavigationLink(destination: ProfileStarleet()) {
                        Label("Profile", systemImage: "person.fill")
                    }
                }
                ToolbarItemGroup(placement: ToolbarItemPlacement.topBarTrailing){
                    if selectedTab == 1 {
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("New message")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("New training program")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Option 3")
                            }
                        } label: {
                            Label("Notifications", systemImage: "calendar")
                        }
                        
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("New message")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("New training program")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Option 3")
                            }
                        } label: {
                            Label("Notifications", systemImage: "plus")
                        }
                        
                    } else if selectedTab == 2 {
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("New message")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("New training program")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Option 3")
                            }
                        } label: {
                            Label("Notifications", systemImage: "gear")
                        }
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("New message")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("New training program")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Option 3")
                            }
                        } label: {
                            Label("Notifications", systemImage: "plus")
                        }
                        
                    } else if selectedTab == 3 {
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("New message")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("New training program")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Option 3")
                            }
                        } label: {
                            Label("Notifications", systemImage: "rectangle.3.group.bubble.fill")
                        }
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("To: ")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("New training program")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Option 3")
                            }
                        } label: {
                            Label("Notifications", systemImage: "square.and.pencil")
                        }
                        
                    }
                    else if selectedTab == 4 {
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("New message")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("New training program")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Option 3")
                            }
                        } label: {
                            Label("Notifications", systemImage: "chart.dots.scatter")
                        }
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("New message")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("New training program")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Option 3")
                            }
                        } label: {
                            Label("Notifications", systemImage: "list.bullet.clipboard")
                        }
                        
                    }
                    else {
                        NavigationLink(destination: SubscriptionStarleet()) {
                            Label("Subscription", systemImage: "cpu")
                        }
                        
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("New message")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("New training program")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Option 3")
                            }
                        } label: {
                            Label("Notifications", systemImage: "bell")
                        }
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
