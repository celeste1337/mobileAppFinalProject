//
//  HistoryPageView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI

struct HistoryPageView: View {
    @EnvironmentObject var nights: Nights;
    
    var body: some View {
        if nights.list.isEmpty {
            Text("nothing here")
        } else {
            //let first = nights.list.first
            HStack {
                ForEach(nights.list) { night in
                    Text(String((night.getDrinks().first?.getName() ?? "Drink")))

                    //Text(String(night.getTimeStart()))
                }
                //Text(String(nights.list.count))
                //Text(String(nights.list[0].getDrinks().count))
            }
        }
    }
}

struct HistoryPageView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryPageView()
    }
}
