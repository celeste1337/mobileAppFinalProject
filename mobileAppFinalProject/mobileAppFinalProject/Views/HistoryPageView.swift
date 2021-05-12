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
            VStack {
                ForEach(nights.list) { night in
                    Group {
                        Text(String((night.getDrinks().first?.getName() ?? "Drink")))
                        ForEach(night.getDrinks()) { drink in
                            //print(drink)
                            Text(drink.getName())
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
