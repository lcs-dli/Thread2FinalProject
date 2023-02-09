//
//  CircleView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-09.
//

import SwiftUI

struct CircleView: View {
    //MARK: Storing property
    @State var input: String = ""
    //MARK: Storing property
    var radiusAsOptionalDouble: Double? {
        guard let unwrappedradius = Double(input) else{
            return nil
        }
        return unwrappedradius
    }
    var area: Double{
        if (radiusAsOptionalDouble == nil){
            return 0
        }
        return radiusAsOptionalDouble!*Double.pi*radiusAsOptionalDouble!
    }
    
    var body: some View {
        VStack{
            Image("Circle")
            HStack(alignment: .center){
                Spacer()
                Text("Radius: ")
                TextField("input", text: $input)
                Text("Area: \(area.formatted(.number.precision(.fractionLength(2))))")
                Spacer()
            }
            
            
        }.navigationTitle("Circle")
        
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
