//
//  File.swift
//  
//
//  Created by M Alfin Syahruddin on 29/08/23.
//

import Foundation

public enum Route {
    case main(route: MainRoute)
    case product(route: ProductRoute)
    case cart(route: CartRoute)
}

public enum MainRoute {
    case homePage
}

public enum ProductRoute {
    case productPage
}

public enum CartRoute {
    case cartPage
}
