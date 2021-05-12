//
//  Drink.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import Foundation

class Drink: Codable, Identifiable {
    private var name: String = "";
    private var amount: Int = 0;
    private var percentage: Double = 0.0;
    
    init(name: String, amount: Int, percentage: Double) {
        set(name: name);
        set(amount: amount);
        set(percentage: percentage);
    }
    
    func getName() -> String {
        return name;
    }
    func set(name: String) {
        self.name = name;
    }
    
    func getAmount() -> Int {
        return amount;
    }
    func set(amount: Int) {
        self.amount = amount;
    }
    
    func getPercentage() -> Double {
        return percentage;
    }
    func set(percentage: Double) {
        self.percentage = percentage;
    }
}
