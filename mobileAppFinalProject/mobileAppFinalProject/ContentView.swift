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
    case returningUser
}

struct ContentView: View {
    @State var currentState = CurrentState.newUser
    @State var user: User
    
    var body: some View {
            //navigate to the other page
            //set state to returning
        if user.getHeight() == 0.0 {
            NavigationView {
                ZStack{
                    Image("Background")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)

                    VStack {
                        Text("here is some placeholder text")
                        
                        NavigationLink(
                            destination: QuestionPageView(),
                            label: {
                                Text("button lmao")
                            })
                    }
                }
            }
        } else if user.getHeight() != 0.0 {
            NavigationView {
                NavigationLink(
                    destination: HomePageView(),
                    label: {
                        Text("what")
                    })
            }
        }


        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: User())
    }
}
