//
//  User.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import Foundation

class User: ObservableObject {
    @Published var weight: Int? = nil;
    //height needs to be converted to metric for storing
   @Published var height: Int? = nil;
    
    func getWeight() -> Int {
        return weight ?? 0;
    }
    func set(weight: Int) {
        self.weight = weight;
    }
    
    func getHeight() -> Int {
        return height ?? 0;
    }
    func set(height: Int) {
        self.height = height;
    }
}
