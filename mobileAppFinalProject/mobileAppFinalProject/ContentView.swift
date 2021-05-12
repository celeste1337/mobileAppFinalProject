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
    case returningUser
}

struct ContentView: View {
    @State var currentState = CurrentState.newUser
    @State var user: User
    @State var selectedTab = Tabs.home
    
    var body: some View {
            //navigate to the other page
            //set state to returning
        //if user.getHeight() == 0.0 {
//            NavigationView {
//                ZStack{
//                    Image("Background")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .edgesIgnoringSafeArea(.all)
//
//                    VStack {
//                        Text("here is some placeholder text")
//
//                        NavigationLink(
//                            destination: QuestionPageView(),
//                            label: {
//                                Text("button lmao")
//                            })
//                    }
//                }
//            }
        //} else if user.getHeight() != 0.0 {
                TabView(selection: $selectedTab) {
                    HomePageView().tabItem {
                        Text("Home")
                    }.tag(Tabs.home)
                    HistoryPageView().tabItem {
                        Text("History")
                    }.tag(Tabs.history)
                    InfoPageView().tabItem {
                        Text("Info")
                    }.tag(Tabs.info)
                    
                }.onAppear() {
    UITabBar.appearance().barTintColor = UIColor(red: 67.0/255, green: 27.0/255, blue: 112.0/255, alpha: 1)
    UITabBar.appearance().unselectedItemTintColor = UIColor.white
    
}



            }
        //}


        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: User())
    }
}
