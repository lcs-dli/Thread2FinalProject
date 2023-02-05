//
//  threeDimensionListView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-05.
//

import SwiftUI

struct threeDimensionListView: View {
    var body: some View {
        List(threeDimensionShapes){ currentShape in
            NavigationLink(destination: {
                
            }, label: {
                Text(currentShape.nameOfShape)
            })
        }
    }
}

struct threeDimensionListView_Previews: PreviewProvider {
    static var previews: some View {
        threeDimensionListView()
    }
}
