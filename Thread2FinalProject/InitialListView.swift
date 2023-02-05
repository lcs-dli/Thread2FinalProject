//
//  InitialListView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-05.
//

import SwiftUI

struct InitialListView: View {
    var body: some View {
        List{
            NavigationLink(destination: {
                twoDimensionListView()
            }, label: {
                Text("2D shapes")
            })
            
            
            Text("3D shapes")
        }
    }
}

struct InitialListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            InitialListView()
        }
    }
}
