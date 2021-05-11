//
//  App.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//



//
// this will mostly be for keeping track of state (new user, returning user)
// that way we know when to display the splash screen and "register" someone

import Foundation

class App {
    enum State {
        case newUser
        case returningUser(User)
    }
}
