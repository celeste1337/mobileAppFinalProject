//
//  SplashPageView.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI

struct QuestionPageView: View {
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            
        }

    }
}

struct QuestionPageView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionPageView()
    }
}
