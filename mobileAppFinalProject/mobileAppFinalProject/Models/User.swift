//
//  User.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import Foundation

class User {
    private var weight: Int = 0;
    //height needs to be converted to metric for storing
    private var height: Double = 0.0;
    
    init(weight: Int, height: Double) {
        set(weight: weight);
        set(height: height);
    }
    
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
