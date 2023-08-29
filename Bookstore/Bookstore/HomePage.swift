//
//  HomePage.swift
//  Bookstore
//
//  Created by M Alfin Syahruddin on 29/08/23.
//


import SwiftUI
import Shared

struct HomePage: View {
    
    @EnvironmentObject var navigator: Navigator

    var body: some View {
        VStack {
            Text("Bookstore")
                .font(.shared(.pinokio, size: 48))
            
            Image(shared: "store")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 250)
            
            Button("Navigate to Product Page") {
                navigator.navigate(to: .product(route: .productPage))
            }
            
            Button("Navigate to Cart Page") {
                navigator.navigate(to: .cart(route: .cartPage))
            }
            
            Spacer()
        }
    }
}
