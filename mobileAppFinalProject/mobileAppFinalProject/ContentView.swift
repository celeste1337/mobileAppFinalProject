//
//  ContentView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI
import UserNotifications

enum Tabs: Hashable {
    case home
    case history
    case info
}

enum CurrentState {
    case newUser
    case returningUser
}

struct ContentView: View {
    @ObservedObject var notificationManager = LocalNotificationManager()
    @State var currentState = CurrentState.newUser
//    @State var user: User
    @State var selectedTab = Tabs.home
    @State var nights: Nights
    
    
    var body: some View {
            let notif = self.notificationManager.sendNotification(title: "Drinking Buddy says:", subtitle: nil, body: "It's time to drink some water!", launchIn: 5) //5 seconds for testing purposes


                TabView(selection: $selectedTab) {
                    HomePageView().tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(Tabs.home)
                    HistoryPageView().tabItem {
                        Image(systemName: "book")
                        Text("History")
                    }.tag(Tabs.history)
                    InfoPageView().tabItem {
                        Image(systemName: "person")
                        Text("Info")
                    }.tag(Tabs.info)
                    
                }.onAppear() {
                    UITabBar.appearance().barTintColor = UIColor(red: 67.0/255, green: 27.0/255, blue: 112.0/255, alpha: 1)
                    UITabBar.appearance().unselectedItemTintColor = UIColor.white
            }
            .navigationBarBackButtonHidden(true)
        } // end body
    
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(nights: Nights())
    }
}
