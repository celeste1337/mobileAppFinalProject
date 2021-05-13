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
    
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Your Info")
                    .foregroundColor(.white)

                //user height
                
                //user weight
                
                //number of nights you have
                Text("You have logged \(nights.list.count) nights.").foregroundColor(.white)

                Spacer().frame(height:100)

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
        InfoPageView()
    }
}
