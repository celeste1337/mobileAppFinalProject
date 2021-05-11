//
//  Night.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import Foundation

class Night {
    private var timeStart: Date = Date();
    private var timeEnd: Date = Date();
    private var drinks: [Drink] = [];
    private var waters: [Drink] = [];
    
    init(timeStart: Date, timeEnd: Date, drinks: [Drink], waters: [Drink]) {
        set(timeStart: timeStart);
        set(timeEnd: timeEnd);
        set(drinks: drinks);
        set(waters: waters);
    }
    
    func getTimeStart() -> Date {
        return timeStart;
    }
    func set(timeStart: Date) {
        self.timeStart = timeStart;
    }
    
    func getTimeEnd() -> Date {
        return timeEnd;
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

    func getWaters() -> [Drink] {
        return waters;
    }
    func set(waters: [Drink]) {
        self.waters = waters;
    }
}
