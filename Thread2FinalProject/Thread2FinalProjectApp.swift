//
//  Thread2FinalProjectApp.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-05.
//

import SwiftUI

@main
struct Thread2FinalProjectApp: App {
    @State var record: [History] = []
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                TabView{
                    twoDimensionListView(record: $record)
                        .tabItem{
                            Text("2DShape")
                        }
                    threeDimensionListView()
                        .tabItem{
                            Text("3DShape")
                        }
                    HistoryView(record: $record)
                        .tabItem{
                            Text("History")
                        }
                }
                .accentColor(.orange)
            }
        }
    }
}
