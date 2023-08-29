//
//  File.swift
//  
//
//  Created by M Alfin Syahruddin on 29/08/23.
//

import SwiftUI

public final class Navigator: ObservableObject {
                
    public let navigationController: UINavigationController = UINavigationController()
    public let router: any RouterProtocol
    public let initialRoute: Route
    
    public init(router: some RouterProtocol, initialRoute: Route) {
        self.router = router
        self.initialRoute = initialRoute
    }
    
    public func start() {
        self.navigate(to: initialRoute)
    }
    
    public func navigate(to route: Route, transition: Transition = .push, animated: Bool = true) {
        let view = router.getView(for: route).erased.environmentObject(self)
        let viewController = UIHostingController(rootView: view)
        
        switch transition {
        case .push:
            self.navigationController.pushViewController(viewController, animated: animated)
            
        case .presentSheet:
            viewController.modalPresentationStyle = .formSheet
            self.navigationController.present(viewController, animated: animated)
            
        case .presentFullscreen:
            viewController.modalPresentationStyle = .fullScreen
            self.navigationController.present(viewController, animated: animated)
        }
    }
    
    public func pop(animated: Bool = true) {
        self.navigationController.popViewController(animated: animated)
    }
    
    public func popToRoot(animated: Bool = true) {
        self.navigationController.popToRootViewController(animated: animated)
    }
    
    public func dismiss(animated: Bool = true) {
        self.navigationController.dismiss(animated: animated)
    }
}

