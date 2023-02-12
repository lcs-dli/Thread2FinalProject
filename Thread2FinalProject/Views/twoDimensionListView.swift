//
//  twoDimensionListView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-09.
//

import SwiftUI

struct twoDimensionListView: View {
    //MARK: Storing property
    //MARK: Computing property
    var body: some View {
        List{
            NavigationLink(destination: {
                CircleView()
            }, label: {
                HStack{
                    Text("Circle")
                    Image("Circle")
                        .resizable()
                        .scaledToFit()
                }
            })
               
            
            NavigationLink(destination: {
                TriangleView()
            }, label: {
                Text("Triangle")
            })
            NavigationLink(destination: {
                RectangleView()
            }, label: {
                Text("Rectangle")
            })
                
            
        }
    }
}

struct twoDimensionListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
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
}
