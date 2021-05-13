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
                                Text("Number of drinks consumed: \(night.getDrinks().count)")
                                Text("Glasses of water: \(night.getWaters().count)")
                            }.foregroundColor(.white)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x: 10)
                        .padding(20)
                        Divider()
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
