//
//  Router.swift
//  Bookstore
//
//  Created by M Alfin Syahruddin on 29/08/23.
//

import SwiftUI
import Shared
import Product
import Cart

struct Router: RouterProtocol {
    @ViewBuilder
    func getView(for route: Route) -> some View {
        switch route {
        case .main(let route):
            MainRouter().getView(for: route)
            
        case .product(let route):
            ProductRouter().getView(for: route)

        case .cart(let route):
            CartRouter().getView(for: route)
        }
    }
}

struct MainRouter {
    @ViewBuilder
    func getView(for route: MainRoute) -> some View {
        switch route {
        case .homePage:
            HomePage()
        }
    }
}

struct ProductRouter {
    @ViewBuilder
    func getView(for route: ProductRoute) -> some View {
        switch route {
        case .productPage:
            ProductPage()
        }
    }
}


struct CartRouter {
    @ViewBuilder
    func getView(for route: CartRoute) -> some View {
        switch route {
        case .cartPage:
            CartPage()
        }
    }
}
