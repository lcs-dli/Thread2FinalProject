//
//  twoDimensionListView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-09.
//

import SwiftUI

struct twoDimensionListView: View {
    //MARK: Storing property
    @Binding var record: [History]
    //MARK: Computing property
    var body: some View {
        List{
            NavigationLink(destination: {
                CircleView(record: $record)
            }, label: {
                HStack{
                    Text("Circle")
                    Image("Circle")
                        .resizable()
                        .scaledToFit()
                }
            })
               
            
            NavigationLink(destination: {
                TriangleView(record: $record)
            }, label: {
                Text("Triangle")
            })
            NavigationLink(destination: {
                RectangleView(record: $record)
            }, label: {
                Text("Rectangle")
            })
                
            
        }
    }
}

/*struct twoDimensionListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            twoDimensionListView(record: $record)
        }
    }
}*/
