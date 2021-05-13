//
//  InfoPageView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI

struct InfoPageView: View {
    @EnvironmentObject var user: User
    @EnvironmentObject var nights: Nights;
    @Binding var height:Int
    @Binding var weight:Int
    
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Group {
                    Text("Your Info")
                        .foregroundColor(.white)
                        .font(.largeTitle)

                    Text("Height: \(height) in")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    Text("Weight: \(weight) lbs")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    
                    Spacer().frame(height:20)
                    
                    //number of nights you have
                    Text("You have logged \(nights.list.count - 1) nights.").foregroundColor(.white)
                }.offset(x: -10,y: -175)
                Spacer().frame(height:350)
                
                HStack {
                    Text("Made with")
                    Image(systemName: "heart")
                    Text("by Jin Jin H. and Celeste Y.")
                }.foregroundColor(.white)
            }
        }
    }
}

struct InfoPageView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPageView(height: .constant(0), weight: .constant(0))
    }
}
