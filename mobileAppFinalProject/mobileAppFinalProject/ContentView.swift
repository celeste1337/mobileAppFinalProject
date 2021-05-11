//
//  ContentView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI


enum CurrentState {
    case newUser
    //idk if this needs parameters
    case returningUser(User)
}

struct ContentView: View {
    @State var currentState = CurrentState.newUser
    
    var body: some View {
            //navigate to the other page
            //set state to returning
        NavigationView {
            ZStack{
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Text("here is some placeholder text")
                    
                    NavigationLink(
                        destination: HomePageView(),
                        label: {
                            Text("button lmao")
                        })
                }
            }.onAppear {
                currentState = .returningUser(User(weight: 10, height: 10))
            }
            }


        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
