//
//  Night.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import Foundation

class Night: Codable, Identifiable {
    private var timeStart: Date = Date.init();
    private var timeEnd: Date? = Date.init();
    private var drinks: [Drink] = [];
    private var waters: [Drink] = [];
    private var height: Double? = nil
    private var weight: Double? = nil
    
    init(timeStart: Date, timeEnd: Date?, drinks: [Drink], waters: [Drink], height: Double?, weight: Double?) {
        set(timeStart: timeStart);
        set(timeEnd: timeEnd ?? Date.init());
        set(drinks: drinks);
        set(waters: waters);
        set(height: height)
        set(weight: weight)
    }
    
    func getTimeStart() -> Date {
        return timeStart;
    }
    func set(timeStart: Date) {
        self.timeStart = timeStart;
    }
    
    func getTimeEnd() -> Date {
        return timeEnd!;
    }
    func set(timeEnd: Date) {
        self.timeEnd = timeEnd;
    }
    
    func getDrinks() -> [Drink] {
        return drinks;
    }
    func set(drinks: [Drink]) {
        self.drinks = drinks;
    }
    func add(drink: Drink) {
        self.drinks.append(drink);
    }
    func removeDrink() {
        self.drinks.removeLast();
    }

    func getWaters() -> [Drink] {
        return waters;
    }
    func set(waters: [Drink]) {
        self.waters = waters;
    }
    func add(water: Drink) {
        self.waters.append(water);
    }
    func removeWater() {
        self.waters.removeLast();
    }
    
    func getHeight() -> Double? {
        return height;
    }
    func set(height: Double?) {
        self.height = height;
    }
    
    func getWeight() -> Double? {
        return weight;
    }
    func set(weight: Double?) {
        self.weight = weight;
    }
    
}
