//
//  TemplateView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-05.
//

import SwiftUI

struct TemplateView: View {
    //MARK: Storing property
    var shape: twoDimensionShape
    
    //MARK: Computing property
    var body: some View {
        VStack{
            Image(shape.nameOfShape)
        }.navigationTitle(shape.nameOfShape)
    }
}

struct TemplateView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TemplateView(shape: twoDimensionShape(radius: 2))
        }
        
    }
}
