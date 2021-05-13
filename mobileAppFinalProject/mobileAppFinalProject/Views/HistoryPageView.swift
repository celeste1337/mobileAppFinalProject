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

            VStack {
                ForEach(1 ... nights.list.count) { night in
                    Group {
                        Text("\(night.getTimeStart())")
                        Text("\(night.getTimeEnd())")
                        ForEach(night.getDrinks()) { drink in
                            Text(drink.getName())
                            Text(String(drink.getAmount()))
                            Text(String(drink.getPercentage()))
                        }
                        ForEach(night.getWaters()) { water in
                            Text(water.getName())
                        }
                    }
                }
            }
        }
    }
}

struct HistoryPageView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryPageView()
    }
}
