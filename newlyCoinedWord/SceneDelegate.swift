//
//  SceneDelegate.swift
//  newlyCoinedWord
//
//  Created by J on 2022/07/08.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
        sleep(3)
        // 사용자들에게 시작화면을 표시하고 빠르게 첫 번째 화면으로 넘어감으로서 사람들에게 경험이 빠르고 반응이 좋다는 인상을 준다. 모든 플랫폼에서 시작 화면이 필요한 것은 아닌다. ios와 ipad tvos 앱은 제공. 시작 화면에 텍스트,광고,지연 시키는 화면 포함x
        // 삭제는 해도 상관 없으나 human-interface-guideline의 말처럼 시작화면이 사용자 경험에 대한 인식을 빠르게 시작하고 즉시 사용할 수 있다는 인식을 높인다고 하는데 정말 삭제하고 구동시키면 뭔가 밋밋하다랄까 시작 화면에 익숙해져있는 탓일까 조금 거리감이 있다.
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

