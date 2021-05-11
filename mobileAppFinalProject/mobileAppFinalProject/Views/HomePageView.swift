//
//  HomePageView.swift
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

struct HomePageView: View {
    @State var selectedTab = Tabs.home
    var body: some View {
        Text("this is the home page view")
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
