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
                
                let tempArray = tempDict["nights"]! as! Array<[String:Any]>;
                
                var tempNights: [Night] = [];
                
                for dict in tempArray {
                    print("\(dict)")
                    
                    let timeStart = dict["timeStart"]! as! Date;
                    let timeEnd = dict["timeEnd"]! as! Date;
                    let drinks = dict["drinks"]! as! [Drink];
                    let waters = dict["waters"]! as! [Drink];
                    
                    let night = Night(timeStart: timeStart, timeEnd: timeEnd, drinks: drinks, waters: waters)
                    list.append(night)
                }
            } catch {
                print(error)
            }
        }
    } // end get data
    
    func writeData(nights: [Night]) {
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("nights.plist")
        
        do {
            let data = try encoder.encode(nights)
            try data.write(to: path)
        } catch {
            print(error)
        }
    } // end write data
}
