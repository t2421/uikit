//
//  ViewController.swift
//  uiNotification
//
//  Created by taigakiyotaki on 2019/01/30.
//  Copyright © 2019 taigakiyotaki. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController,UNUserNotificationCenterDelegate {
    private let BUTTON_NORMAL:Int = 1
    private let BUTTON_FIRE:Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        center.requestAuthorization(options: [.alert,.sound]){(granted,error) in
            
        }
        
        let btnW:CGFloat = 200
        let btnH:CGFloat = 50
        
        let btn = UIButton(frame: CGRect(x: self.view.frame.width/2-btnW/2, y: self.view.frame.height/2-btnH/2, width: btnW, height: btnH))
        btn.backgroundColor = UIColor.orange
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 20.0
        btn.tag = BUTTON_NORMAL
        btn.setTitle("notification", for: .normal)
        btn.addTarget(self, action: #selector(self.onClickMyButton(sender:)), for: .touchDown)
        self.view.addSubview(btn)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func onClickMyButton(sender:UIButton){
        
        if(sender.tag == BUTTON_NORMAL){
            showNotification()
            print(sender.tag)
        }else if(sender.tag == BUTTON_FIRE){
            
        }
        
    }
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler handlerBlock:
        (UNNotificationPresentationOptions) -> Void) {
        // Roll banner and sound alert
        showNotification()
    }
    
    private func showNotification(){
        let center = UNUserNotificationCenter.current()
        // ① NotificationContent
        let content = UNMutableNotificationContent()
        content.title = "サンプルのローカルPushです"
        content.subtitle = "サンプルのsubtitleです"
        content.body = "サンプルのbodyです"
        content.badge = 1
        content.sound = .default
        
        // ② NotificationTrigger
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        // ③ NotificationRequest
        let request = UNNotificationRequest(identifier: "SamplePush", content: content, trigger: trigger)
        
        // ④ 通知の追加
        center.add(request)
    }
}

