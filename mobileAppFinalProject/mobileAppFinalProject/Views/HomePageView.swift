//
//  HomePageView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI

struct HomePageView: View {
    @State var currentNight: Night = Night(timeStart: "", timeEnd: "", drinks: [], waters: [], height: nil, weight: nil)
    @State var numDrinks = 0;
    @State var numWaters = 0;
    @EnvironmentObject var nights: Nights;
    
    
    //this page needs to check state
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("nightstarted")
                    .offset(y: -100)
                Spacer().frame(height: 50)
                //drinks row
                VStack {
                    HStack {
                        Text("Drinks").foregroundColor(.white)
                        Spacer().frame(width: 250, height: 0)
                        Button(action: {
                            if numDrinks <= 9 {
                                var tempDrink = Drink(name: "Beverage", amount: 1, percentage: 5.0)
                                currentNight.add(drink: tempDrink)
                                numDrinks += 1;
                            }
                        }, label: {
                            Image(systemName: "plus.circle")
                                .foregroundColor(.white)
                        })
                        
                        Button(action: {
                            if numDrinks > 0 {
                                currentNight.removeDrink();
                                numDrinks -= 1;
                            }
                        }, label: {
                            Image(systemName: "minus.circle")
                                .foregroundColor(.white)
                        })
                    }
                        
                    HStack {
                        ForEach(0..<numDrinks, id: \.self) { drink in
                            Image("alcohol")
                                .resizable()
                                .frame(width: 30, height: 40, alignment: .center)
                        }
                    }.frame(height: 50)
                }
                .offset(y: -50)
                Spacer().frame(height: 50)
                
                //water row
                VStack {
                    HStack {
                        Text("Waters").foregroundColor(.white)
                        Spacer().frame(width: 250, height: 0)
                        
                        Button(action: {
                            if numWaters <= 9 {
                                var tempDrink = Drink(name: "Water", amount: 1, percentage: 0.0)
                                currentNight.add(water: tempDrink)
                                numWaters += 1;
                            }
                        }, label: {
                            Image(systemName: "plus.circle")
                                .foregroundColor(.white)
                        })
                        
                        Button(action: {
                            if numWaters > 0 {
                                currentNight.removeWater();
                                numWaters -= 1;
                            }
                        }, label: {
                            Image(systemName: "minus.circle")
                                .foregroundColor(.white)
                        })
                    }
                        
                    HStack {
                        ForEach(0..<numWaters, id: \.self) { drink in
                            Image("water")
                                .resizable()
                                .frame(width: 30, height: 40, alignment: .center)
                        }
                    }.frame(height: 50)
                }
                .offset(y: -20)
                Spacer().frame(height: 50)
                
                Button(action: {
                    currentNight.set(timeEnd: "Now")
                    print(currentNight, currentNight.getDrinks().count, currentNight.getWaters().count)
                    nights.list.append(currentNight);
                    
                    
                    var tempNights = nights.list
                    
                    nights.writeData(nights: tempNights);
                    
                    currentNight = Night(timeStart: "Now", timeEnd: "", drinks: [], waters: [], height: nil, weight: nil)
                    numWaters = 0;
                    numDrinks = 0;
                }, label: {
                    Image("EndMyNightButton")
                })
                .offset(y: 20)
            }
        } //ZStack
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView().environmentObject(Nights())
    }
}
