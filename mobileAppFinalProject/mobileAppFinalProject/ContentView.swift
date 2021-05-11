//
//  ContentView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI

enum Tabs: Hashable {
    case home
    case history
    case info
}

enum CurrentState {
    case newUser
    //idk if this needs parameters
    case returningUser(User)
}

struct ContentView: View {
    @State var currentState = CurrentState.returningUser(User(weight: 10, height: 10))
    @State var selectedTab = Tabs.home
    
    var body: some View {
        switch currentState {
        case .newUser:
            //go thru splash screen
            Text("new user");
            //we need to set the state to returning user so the user doesnt need to do splash again
            //currentState = .returningUser(User(weight: 5, height: 10))
        case .returningUser:
            //go to home page :]
            // def better way to do this
            NavigationView {
                NavigationLink(
                    destination: HomePageView(),
                    label: {
                        Text("Welcome back")
                    })
            }
        
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
