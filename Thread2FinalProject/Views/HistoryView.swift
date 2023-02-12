//
//  HistoryView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-11.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        if record.isEmpty{
            Text("empty")
        }else{
            List(record.reversed()){
                currentdisplay in
                HStack{
                    Spacer()
                    HistoryHelpView(input: currentdisplay)
                }
            }
        }
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
