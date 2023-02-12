//
//  RectangleView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-09.
//

import SwiftUI

struct RectangleView: View {
    //MARK: Storing property
    @State var length: String = ""
    @State var width: String = ""
    @Binding var record: [History]
    //MARK: Computing property
    var lengthAsOptionalDouble: Double?{
        guard let unwrappedLength = Double(length) else{
            return nil
        }
        return unwrappedLength
    }
    
    var widthAsOptionalDouble: Double?{
        guard let unwrappedWidth = Double(width) else{
            return nil
        }
        return unwrappedWidth
    }
    
    var area: Double{
        if(widthAsOptionalDouble == nil || lengthAsOptionalDouble == nil){
            return 0
        }
        return widthAsOptionalDouble!*lengthAsOptionalDouble!
    }
    
    var perimeter: Double{
        if(widthAsOptionalDouble == nil || lengthAsOptionalDouble == nil){
            return 0
        }
        return (widthAsOptionalDouble!+lengthAsOptionalDouble!)*2
    }
    
    var body: some View {
        VStack{
            Image("Rectangle")
            HStack(alignment: .center){
                Spacer()
                Text("Length: ")
                TextField("input", text: $length)
                Text("Width ")
                TextField("input", text: $width)
                Spacer()
            }
            Text("Area: \(area.formatted(.number.precision(.fractionLength(2))))")
            Text("Perimeter: \(perimeter.formatted(.number.precision(.fractionLength(2))))")
        }.navigationTitle("Rectangle")
    }
}
/*
struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
*/
