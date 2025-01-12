//
//  egQuizApp.swift
//  egQuiz
//
//  Created by Apple on 2024/02/08.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseMessaging
import UserNotifications
import GoogleMobileAds

class AppDelegate: NSObject, UIApplicationDelegate {
    var appState: AppState!
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        self.appState = AppState()
        Messaging.messaging().delegate = self

         UNUserNotificationCenter.current().delegate = self

         let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
         UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in })

         application.registerForRemoteNotifications()

         Messaging.messaging().token { token, error in
             if let error {
                 print("Error fetching FCM registration token: \(error)")
             } else if let token {
                 print("FCM registration token: \(token)")
             }
         }

         return true
     }
    func application(_: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("Oh no! Failed to register for remote notifications with error \(error)")
    }

//    func application(_: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//        var readableToken = ""
//        for index in 0 ..< deviceToken.count {
//            readableToken += String(format: "%02.2hhx", deviceToken[index] as CVarArg)
//        }
//        print("Received an APNs device token: \(readableToken)")
//    }
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // APNsデバイストークンを読みやすい形式に変換する処理
        var readableToken = ""
        for index in 0 ..< deviceToken.count {
            readableToken += String(format: "%02.2hhx", deviceToken[index] as CVarArg)
        }
        print("Received an APNs device token: \(readableToken)")
        
        // FirebaseにAPNsトークンを設定
        Messaging.messaging().apnsToken = deviceToken
    }

}

extension AppDelegate: MessagingDelegate {
    @objc func messaging(_: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        print("Firebase token: \(String(describing: fcmToken))")
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate {
    func userNotificationCenter(
        _: UNUserNotificationCenter,
        willPresent _: UNNotification,
        withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void
    ) {
        completionHandler([[.banner, .list, .sound]])
    }

    func userNotificationCenter(
        _: UNUserNotificationCenter,
        didReceive response: UNNotificationResponse,
        withCompletionHandler completionHandler: @escaping () -> Void
    ) {
        let userInfo = response.notification.request.content.userInfo
        NotificationCenter.default.post(
            name: Notification.Name("didReceiveRemoteNotification"),
            object: nil,
            userInfo: userInfo
        )
        completionHandler()
    }
}

@main
struct egQuizApp: App {
    @ObservedObject var authManager: AuthManager
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var appState = AppState()

    init() {
        FirebaseApp.configure()
        authManager = AuthManager.shared
    }
    
    var body: some Scene {
        WindowGroup {
            RootView(authManager: authManager)
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
          //              isLoading = false
                        if appState.isBannerVisible {
                            AuthManager.shared.updatePreFlag(userId: AuthManager.shared.currentUserId!, userPreFlag: 0){ success in
                            }
                        }
                    }
                }
//            RewardView()
//            GachaView()
//            Interstitial1()
        }
    }
}

