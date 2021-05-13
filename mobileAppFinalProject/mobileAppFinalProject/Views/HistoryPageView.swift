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
        ZStack{
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            
            
            if nights.list.isEmpty {
                Text("nothing here")
            } else {
                VStack(spacing: 5) {
                    
                    Text("History")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    
                    ForEach(nights.list) { night in
                        VStack(alignment: .leading, spacing: 5) {
                            Group {
                                ForEach(night.getDrinks()) { drink in
                                    HStack {
                                        Text(drink.getName())
                                        Text("Number: " + String(drink.getAmount()))
                                        Text("Percentage: " + String(drink.getPercentage()))
                                    }
                                }
                                ForEach(night.getWaters()) { water in
                                    Text(water.getName())
                                }
                            }.foregroundColor(.white)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 10)
                        .background(Color(red: 11.0/255, green: 13.0/255, blue: 64.0/255))
                        .padding(20)
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
