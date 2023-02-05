//
//  twoDimensionListView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-05.
//

import SwiftUI

struct twoDimensionListView: View {
    var body: some View {
        List(twoDimensionShapes){ currentShapes in
            
            NavigationLink(destination: {
                TemplateView(shape: currentShapes)
            }, label: {
                Text(currentShapes.nameOfShape)
            })
        }
    }
}

struct twoDimensionListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            twoDimensionListView()
        }
    }
}
