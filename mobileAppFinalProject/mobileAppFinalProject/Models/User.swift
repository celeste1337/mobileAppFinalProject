//
//  User.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import Foundation

class User: ObservableObject {
    @Published var weight: Int = 0;
    //height needs to be converted to metric for storing
   @Published var height: Double = 0.0;
    
    func getWeight() -> Int{
        return weight;
    }
    func set(weight: Int) {
        self.weight = weight;
    }
    
    func getHeight() -> Double {
        return height;
    }
    func set(height: Double) {
        self.height = height;
    }
}
