//
//  LocalNotificationManager.swift
//  mobileAppFinalProject
//
//  Created by student on 5/12/21.
//

import Foundation
import SwiftUI

class LocalNotificationManager: ObservableObject{
    var notifications = [Notification]()
    var wantsNotifications = false
    
    init() {
        if wantsNotifications == false{
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
                if granted == true && error == nil {
                    print("Notifications permitted")
                    self.confirm()
                } else {
                    print("Notifications not permitted")
                }
            }
        }

    } //init
    
    func confirm(){
        DispatchQueue.main.async {
            self.wantsNotifications = true
        }
        
    }

    func sendNotification(title: String, subtitle: String?, body: String, launchIn: Double){
        let content = UNMutableNotificationContent()
        content.title = title
        if let subtitle = subtitle {
            content.subtitle = subtitle
        }
        content.body = body
           
        let imageName = "StartButton"
        guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
        content.attachments = [attachment]
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: launchIn, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}
