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
                                Text("Today")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("Choose Date/Time")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Submit")
                            }
                        } label: {
                            Label("Notifications", systemImage: "calendar")
                        }
                        
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("Date/Time")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("Values")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Submit")
                            }
                        } label: {
                            Label("Notifications", systemImage: "plus")
                        }
                        
                    } else if selectedTab == 2 {
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("Signal Health")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("Device Health")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Device Number")
                            }
                        } label: {
                            Label("Notifications", systemImage: "gear")
                        }
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("Time")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("Value")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Submit")
                            }
                        } label: {
                            Label("Notifications", systemImage: "plus")
                        }
                        
                    } else if selectedTab == 3 {
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("Group 1")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("Group 2")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Group 3")
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
                                Text("Textfield")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Send")
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
                                Text("X Values")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("Y Values")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Reset")
                            }
                        } label: {
                            Label("Notifications", systemImage: "chart.dots.scatter")
                        }
                        Menu {
                            Button(action: {
                                // Action 1
                            }) {
                                Text("Report")
                            }
                            Button(action: {
                                // Action 2
                            }) {
                                Text("Advanced report")
                            }
                            Button(action: {
                                // Action 3
                            }) {
                                Text("Download")
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
                                Text("New message")
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
