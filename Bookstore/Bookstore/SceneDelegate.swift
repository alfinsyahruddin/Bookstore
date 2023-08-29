//
//  SceneDelegate.swift
//  Bookstore
//
//  Created by M Alfin Syahruddin on 29/08/23.
//


import UIKit
import SwiftUI
import Shared

final class SceneDelegate: NSObject, UIWindowSceneDelegate {
            
    var window: UIWindow?
    
    private let navigator: Navigator = .init(router: Router(), initialRoute: .main(route: .homePage))

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
         
        Fonts.registerFonts()
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = navigator.navigationController
        window?.makeKeyAndVisible()
     
        navigator.start()
    }
}
