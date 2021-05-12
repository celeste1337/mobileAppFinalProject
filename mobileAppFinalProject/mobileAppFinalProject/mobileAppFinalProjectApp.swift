//
//  mobileAppFinalProjectApp.swift
//  mobileAppFinalProject
//
//  Created by student on 5/10/21.
//

import SwiftUI

@main
struct mobileAppFinalProjectApp: App {
    
    var nights = Nights()
    
    var body: some Scene {
        WindowGroup {
            SplashPageView().environmentObject(nights)
            
        }
    }
}
