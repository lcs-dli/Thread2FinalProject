//
//  HistoryHelpView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-11.
//

import SwiftUI

struct HistoryHelpView: View {
    @State var input: History
    
    var body: some View {
        VStack(alignment: .trailing){
            ForEach(input.s, id: \.self){string in
                Text(string)
            }
        }
    }
}

struct HistoryHelpView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryHelpView(input: History(s:["a","b"]))
    }
}
