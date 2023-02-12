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
            
            Button(action: {
                var nameOfShape: String = "Rectangle"
                var lengthString: String{
                    if lengthAsOptionalDouble == nil{
                        return "length: 0.00"
                    }else{
                        return "length: \(lengthAsOptionalDouble!.formatted(.number.precision(.fractionLength(2))))"
                    }
                }
                var widthString: String{
                    if widthAsOptionalDouble == nil{
                        return "width: 0.00"
                    }else{
                        return "width: \(widthAsOptionalDouble!.formatted(.number.precision(.fractionLength(2))))"
                    }
                }
                var areaString: String = "Area: \(area.formatted(.number.precision(.fractionLength(2))))"
                var perimeterString: String = "Perimeter: \(perimeter.formatted(.number.precision(.fractionLength(2))))"
                var newRecord: History = History(s: [""])
                newRecord.s.append(nameOfShape)
                newRecord.s.append(lengthString)
                newRecord.s.append(widthString)
                newRecord.s.append(areaString)
                newRecord.s.append(perimeterString)
                record.append(newRecord)
            }, label: {
                Text("Save Result")
                    
            })
            .buttonStyle(.bordered)
            .padding()
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
