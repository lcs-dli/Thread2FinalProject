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
    @Binding var record: [History]
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
        VStack{
            Image("Triangle")
            HStack(alignment: .center){
                Spacer()
                Text("Base: ")
                TextField("input", text: $base)
                Text("Height: ")
                TextField("input", text: $height)
                Spacer()
            }
            Text("Area: \(area.formatted(.number.precision(.fractionLength(2))))")
            
            Button(action: {
                var nameOfShape: String = "Triangle"
                var baseString: String{
                    if baseAsOptionalDouble == nil{
                        return "base: 0.00"
                    }else{
                        return "base: \(baseAsOptionalDouble!.formatted(.number.precision(.fractionLength(2))))"
                    }
                }
                var heightString: String{
                    if heightAsOptionalDouble == nil{
                        return "height: 0.00"
                    }else{
                        return "height: \(heightAsOptionalDouble!.formatted(.number.precision(.fractionLength(2))))"
                    }
                }
                var areaString: String = "Area: \(area.formatted(.number.precision(.fractionLength(2))))"
                
                var newRecord: History = History(s: [""])
                newRecord.s.append(nameOfShape)
                newRecord.s.append(baseString)
                newRecord.s.append(heightString)
                newRecord.s.append(areaString)
                record.append(newRecord)
            }, label: {
                Text("Save Result")
                    
            })
            .buttonStyle(.bordered)
            .padding()
        }.navigationTitle("Triangle")
    }
}
/*
struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
*/
