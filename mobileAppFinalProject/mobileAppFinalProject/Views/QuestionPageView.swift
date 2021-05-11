//
//  SplashPageView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI

struct QuestionPageView: View {
    @State private var question1 = true
    var body: some View {
        GeometryReader{geometry in
            ZStack{
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("Before you get started...")
                        .position(x: (geometry.size.width / 2) - 50, y: 125)
                    Text(question1 ? "How tall are you?" : "How much do you weigh?")
                        .foregroundColor(.white)
                        .font(.system(size: 28, weight: .semibold))
                        .position(x: (geometry.size.width / 2), y: -200)
                }
                
            }
        }

    }
}

struct QuestionPageView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionPageView()
    }
}
