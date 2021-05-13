//
//  Nights.swift
//  mobileAppFinalProject
//
//  Created by student on 5/12/21.
//

import Foundation

class Nights: ObservableObject {
    @Published var list: [Night] = [];
    
    init() {
        getData()
    }
    
    func getData() {
        if let path = Bundle.main.path(forResource: "nights", ofType: "plist") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let tempDict = try PropertyListSerialization.propertyList(from: data, format: nil) as! [String:Any];
                
                let tempArray = tempDict["nights"] as! Array<[String:Any]>;
                
                var tempNights: [Night] = [];
                var tempDrinks: [Drink] = []
                var tempWaters: [Drink] = []
                
                for dict in tempArray {
                    print("\(dict)")
                    
                    let timeStart = dict["timeStart"] as! String;
                    let timeEnd = dict["timeEnd"] as! String;
                    let drinks = dict["drinks"]! as! Array<[String:Any]>;
                    for drink in drinks {
                        print(drink)
                        let drName = drink["name"] as! String;
                        let drAmount = Int(drink["amount"] as! String) ?? 1;
                        let drPerc = Double(drink["percentage"] as! String) ?? 5.0;
                        let tempDrink = Drink(name: drName, amount: drAmount, percentage: drPerc)
                        tempDrinks.append(tempDrink)
                    }
                    let waters = dict["waters"]! as! Array<[String:Any]>;
                    for water in waters {
                        print(water)
                        let drName = water["name"] as! String;
                        let drAmount = Int(water["amount"] as! String) ?? 1;
                        let drPerc = Double(water["percentage"] as! String) ?? 0.0;
                        let tempwater = Drink(name: drName, amount: drAmount, percentage: drPerc)
                        tempWaters.append(tempwater)
                    }
                    
                    
                    
                    
                    let height = dict["height"] as! Double?
                    let weight = dict["weight"] as! Double?
                    
                    let night = Night(timeStart: timeStart, timeEnd: timeEnd, drinks: tempDrinks, waters: tempWaters, height: height, weight: weight)
                    tempNights.append(night)
                }
                
                self.list = tempNights
                
            } catch {
                print(error)
            }
        }
    } // end get data
    
    func writeData(nights: [Night]) {
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        print(nights)
        
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("nights.plist")
        
        do {
            let data = try encoder.encode(nights)
            try data.write(to: path)
        } catch {
            print(error)
        }
        
        print("Data written")
    } // end write data
}
