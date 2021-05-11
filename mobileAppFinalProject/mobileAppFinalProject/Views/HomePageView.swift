//
//  HomePageView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI

struct HomePageView: View {
    @State var currentNight = Night(timeStart: Date.init(), timeEnd: nil, drinks: [], waters: [])
    @State var numDrinks = 0;
    var body: some View {
        VStack {
            Text("Your night just started")

            //drinks row
            VStack {
                HStack {
                    Text("Drinks")
                    Button(action: {
                        var tempDrink = Drink(name: "Beverage", amount: 1, percentage: 5.0)
                        currentNight.add(drink: tempDrink)
                        numDrinks += 1;
                    }, label: {
                        Text("Add One")
                    })
                    
                    Button(action: {
                        currentNight.remove();
                        numDrinks -= 1;
                    }, label: {
                        Text("Remove One")
                    })
                }
                    
                HStack {
                    //Image("alcohol").resizable().hidden()
                    ForEach(0..<numDrinks, id: \.self) { drink in
                        Image("alcohol")
                            .resizable()
                    }
                }.background(Color.black)
            }
            
            
            Button(action: {
                currentNight.set(timeEnd: Date.init())
            }, label: {
                Text("End my Night")
            })
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

func checkImages(cNight: Night) -> Int {
    return cNight.getDrinks().count
}
