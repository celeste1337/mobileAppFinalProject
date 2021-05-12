//
//  SplashPageView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/12/21.
//

import SwiftUI

struct SplashPageView: View {
    @EnvironmentObject var nights: Nights
    @ObservedObject var notificationManager = LocalNotificationManager()

    var body: some View {
        NavigationView{
            ZStack{
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("DRINKING BUDDY")
                        .offset(y: -150)
                    NavigationLink(
                        destination: QuestionPageView(nights: _nights)){
                            Image("StartButton")
                                .resizable()
                                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    } //NavLink
                    Spacer()
                        .frame(height: 80)
                    Image("Start your night")
                        .offset(x: -70)
                    Image("and end it well.")
                        .offset(x: 70)
                    Text("*always drink responsibly")
                        .foregroundColor(.white)
                        .font(.system(size: 18))
                        .offset(x: -70, y: 90)
                } //VStack
            } //ZStack
        }//Navigation
    } //Body
} //View

struct SplashPageView_Previews: PreviewProvider {
    static var previews: some View {
        SplashPageView()
    }
}
