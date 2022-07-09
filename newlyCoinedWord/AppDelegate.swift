//
//  AppDelegate.swift
//  newlyCoinedWord
//
//  Created by J on 2022/07/08.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        sleep(3)
        // 사용자들에게 시작화면을 표시하고 빠르게 첫 번째 화면으로 넘어감으로서 사람들에게 경험이 빠르고 반응이 좋다는 인상을 준다. 모든 플랫폼에서 시작 화면이 필요한 것은 아닌다. ios와 ipad tvos 앱은 제공. 시작 화면에 텍스트,광고,지연 시키는 화면 포함x
        // 삭제는 해도 상관 없으나 human-interface-guideline의 말처럼 시작화면이 사용자 경험에 대한 인식을 빠르게 시작하고 즉시 사용할 수 있다는 인식을 높인다고 하는데 정말 삭제하고 구동시키면 뭔가 밋밋하다랄까 시작 화면에 익숙해져있는 탓일까 조금 거리감이 있다.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

