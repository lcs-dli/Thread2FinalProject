//
//  HistoryView.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-11.
//

import SwiftUI

struct HistoryView: View {
    @Binding var record: [History]
    var body: some View {
        if record.isEmpty{
            Text("empty")
        }else{
            VStack{
                List(record.reversed()){ currentdisplay in
                    HStack{
                        Spacer()
                        HistoryHelpView(input: currentdisplay)
                    }
                }
                Button(action: {
                    record.removeAll()
                }, label: {
                    Text("Clear History")
                })
            }
        }
        
    }
}

/*struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(record: $record)
    }
}
*/
