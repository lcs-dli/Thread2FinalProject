//
//  TriangleView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-09.
//

import SwiftUI

struct TriangleView: View {
    //MARK: Storing property
    @State var base: String = ""
    @State var height: String = ""
    //MARK: Computing property
    var baseAsOptionalDouble: Double?{
        guard let unwrappedBase = Double(base) else{
            return nil
        }
        return unwrappedBase
    }
    var heightAsOptionalDouble: Double?{
        guard let unwrappedHeight = Double(height) else{
            return nil
        }
        return unwrappedHeight
    }
    
    var area: Double{
        if(baseAsOptionalDouble == nil || heightAsOptionalDouble == nil){
            return 0
        }
        return baseAsOptionalDouble!*heightAsOptionalDouble!/2
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
