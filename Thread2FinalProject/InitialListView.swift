//
//  InitialListView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-05.
//

import SwiftUI

struct InitialListView: View {
    var body: some View {
        TabView{
            twoDimensionListView()
                .tabItem{
                    Text("2DShape")
                }
            threeDimensionListView()
                .tabItem{
                    Text("3DShape")
                }
            HistoryView()
                .tabItem{
                    Text("History")
                }
        }
        .accentColor(.orange)
    }
}

struct InitialListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            InitialListView()
        }
    }
}
