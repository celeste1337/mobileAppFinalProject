//
//  Night.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import Foundation

class Night: Codable, Identifiable {
    private var timeStart: String = "";
    private var timeEnd: String = "";
    private var drinks: [Drink] = [];
    private var waters: [Drink] = [];
    private var height: Int? = nil
    private var weight: Int? = nil
    
    init(timeStart: String, timeEnd: String, drinks: [Drink], waters: [Drink], height: Int?, weight: Int?) {
        set(timeStart: timeStart);
        set(timeEnd: timeEnd);
        set(drinks: drinks);
        set(waters: waters);
        set(height: height)
        set(weight: weight)
    }
    
    func getTimeStart() -> String {
        return timeStart;
    }
    func set(timeStart: String) {
        self.timeStart = timeStart;
    }
    
    func getTimeEnd() -> String {
        return timeEnd;
    }
    func set(timeEnd: String) {
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
    
    func getHeight() -> Int? {
        return height;
    }
    func set(height: Int?) {
        self.height = height;
    }
    
    func getWeight() -> Int? {
        return weight;
    }
    func set(weight: Int?) {
        self.weight = weight;
    }
    
}
